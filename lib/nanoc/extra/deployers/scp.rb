module Nanoc::Extra::Deployers
  # Very simple nanoc plugin for deploy via scp.
  #
  # @example A deployment configuration
  #
  #   deploy:
  #     default:
  #       kind: scp
  #       dst:  "yourname@sftp.domain.org:/public_html"
  #

  class Scp < ::Nanoc::Extra::Deployer
    DEFAULT_OPTIONS = %w(-2 -r).freeze

    def run
      src = source_path + '/'
      dst = config[:dst]
      options = config[:options] || DEFAULT_OPTIONS

      raise 'No dst found in deployment configuration' if dst.nil?
      raise 'dst requires no trailing slash' if dst[-1, 1] == '/'

      if dry_run
        warn 'Performing a dry-run; no actions will actually be performed'
        run_shell_cmd(['echo', 'scp', options, src, dst].flatten)
      else
        run_shell_cmd(['scp', options, src, dst].flatten)
      end
    end

    private

    def run_shell_cmd(cmd)
      piper = Nanoc::Extra::Piper.new(stdout: $stdout, stderr: $stderr)
      piper.run(cmd, nil)
    end
  end
end
