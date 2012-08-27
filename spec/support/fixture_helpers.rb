module FixtureHelpers

  def fixtures_dir
    File.join(root_folder, "spec/fixtures")
  end

  def tmp_dir
    File.join(root_folder, "tmp")
  end

  def test_epub
    File.join(fixtures_dir, "example.epub")
  end

  def tmp_epub
    File.join(tmp_dir, "test.epub")
  end

  def setup_epub
    FileUtils.cp test_epub, tmp_epub
  end

  def remove_epub
    FileUtils.rm tmp_epub
  end

  def create_temp_dir
    FileUtils.mkdir_p(tmp_dir)
  end

end