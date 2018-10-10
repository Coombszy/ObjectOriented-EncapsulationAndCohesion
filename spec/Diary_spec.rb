require 'Diary'

describe Diary do
    describe 'the responses!' do
        it '#add_entry' do
            expect(subject).to respond_to(:add_entry)
        end
        it '#get_entries' do
            expect(subject).to respond_to(:get_entries)
        end
        it '#get_an_entry' do
            expect(subject).to respond_to(:get_an_entry)
        end
    end
end

describe SecretDiary do
    describe 'the responses!' do
        subject = SecretDiary.new(123)
        it '#add_entry' do
            expect(subject).to respond_to(:add_entry)
        end
        it '#get_entries' do
            expect(subject).to respond_to(:get_entries)
        end
        it '#get_an_entry' do
            expect(subject).to respond_to(:get_an_entry)
        end
        it '#lock' do
            expect(subject).to respond_to(:lock)
        end
        it '#unlock' do
            expect(subject).to respond_to(:unlock)
        end
    end
end