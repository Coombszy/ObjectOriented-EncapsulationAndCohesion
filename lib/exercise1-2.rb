class SecretDiary
  def initialize(password_)
    @locked = false
    @password = password_
    @diary = Diary.new
  end
  def unlock(password_)
    if @password == password_
      @locked = false
    end
  end
  def lock
    @locked = true
  end
  def get_entries
    if @locked
      raise "Secret Diary is Locked!"
    else
      @diary.get_entries
    end
  end
  def get_an_entry(entry_number)
    if @locked
      raise "Secret Diary is Locked!"
    else
      @diary.get_an_entry(entry_number)
    end
  end
  def add_entry(text)
    if @locked
      raise "Secret Diary is Locked!"
    else
      @diary.add_entry(text)
    end
  end
end

class Diary
  def initialize
    @entries = Array.new     
  end
  def add_entry(text)
    @entries.push(text)
  end
  def get_entries
    @entries
  end
  def get_an_entry(entry_number)
    @entries[entry_number]
  end
end