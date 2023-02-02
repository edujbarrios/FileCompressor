local function compress_file(file_path, algorithm)
  if algorithm == "gzip" then
    os.execute("gzip " .. file_path)
  elseif algorithm == "bzip2" then
    os.execute("bzip2 " .. file_path)
  elseif algorithm == "tar+gzip" then
    os.execute("tar -czvf " .. file_path .. ".tar.gz " .. file_path)
  else
    print("Error: unsupported algorithm")
  end
end

local function menu()
  print("1. Compress file (gzip)")
  print("2. Compress file (bzip2)")
  print("3. Compress file (tar+gzip)")
  print("4. Quit")
  local choice = io.read()
  if choice == "1" then
    print("Enter the file path:")
    local file_path = io.read()
    compress_file(file_path, "gzip")
    print("File compressed successfully!")
  elseif choice == "2" then
    print("Enter the file path:")
    local file_path = io.read()
    compress_file(file_path, "bzip2")
    print("File compressed successfully!")
  elseif choice == "3" then
    print("Enter the file path:")
    local file_path = io.read()
    compress_file(file_path, "tar+gzip")
    print("File compressed successfully!")
  elseif choice == "4" then
    os.exit()
  else
    print("Invalid choice, try again.")
  end
end

while true do
  menu()
end
