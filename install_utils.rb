module InstallUtils
  MODE_READ_AND_APPEND = 'a+'

  def self.ensure_file_has_line(filepath, line)
    filepath = filepath.split('~').join( ENV['HOME'] )
    filepath = filepath.split('$HOME').join( ENV['HOME'] )

    File.open(filepath, MODE_READ_AND_APPEND) do |f|
      while existing_line = f.gets
        existing_line = existing_line.chomp
        if existing_line == line
          return false
        end
      end

      f.puts ""
      f.puts line
    end

    true
  end
end
