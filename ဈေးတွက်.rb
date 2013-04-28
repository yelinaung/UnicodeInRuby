# -*- encoding : utf-8 -*-
# ဟင်းချက်စရာ မှာခြင်း
# တွက်ချက်ခြင်းကို ဆောင်ရွက်ပေးသည့် ပရိုဂရမ်
# encoding: utf-8

class Hash
  def တန်ဖိုးအားလုံးပေါင်း
    self.values.inject(:+)
  end
end

def ရေး(စာ) puts စာ; end

def တန်ဖိုး(lbl)
  n = %w(0 1 2 3 4 5 6 7 8 9 .)
  un = %w(၀ ၁ ၂ ၃ ၄ ၅ ၆ ၇ ၈ ၉ .)
  (lbl.to_s.split("").collect do |c| n[un.index(c)] unless un.index(c).nil?;end).join("").to_i
end

def စာ(val)
  un = %w(0 1 2 3 4 5 6 7 8 9 .)
  n = %w(၀ ၁ ၂ ၃ ၄ ၅ ၆ ၇ ၈ ၉ .)
  (val.to_s.split("").collect do |c| n[un.index(c)] unless un.index(c).nil?;end).join("")
end
