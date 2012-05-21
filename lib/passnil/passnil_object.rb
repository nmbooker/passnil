# passnil.rb - Provides a way of calling code on an object iff it's not nil.
#
# It's a shortcut for things of this form:
#     x = a.b.c.nil? ? nil : a.b.c.d + 1
# Instead we use:
#     a.b.c.passnil { |c| c.d + 1 }
#
# A real example is that you might want to parse a string, but pass nil
# straight through:
#     date = input_date.passnil { |string| Date.strptime(string, "%Y%m%d") }
#
# In the above example, if 'input_date' is nil, then date will be nil.
# If input_date is not nil, it's passed to the block, evaluated
#
# Author: Nicholas Booker <NMBooker@gmail.com>
# License: MIT

=begin
Copyright (C) 2011 by Nicholas Booker

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
=end

class Object
  # If nil?, return ifnil otherwise return result of the block.
  #
  # e.g.:
  #     '12345'.passnil { |s| s.to_i }     #=> 12345
  #     nil.passnil { |s| s.to_i }         #=> nil
  #     nil.passnil(0) { |s| s.to_i }      #=> 0
  def passnil(ifnil=nil, &block)
    if self.nil?
      return ifnil
    else
      return block.call(self)
    end
  end
end

class Object
  # if nil? or empty?, return ifnil otherwise return result of the block.
  def passempty(ifnil=nil, &block)
    passnil(ifnil) { |t| if t.empty? then ifnil else block.call(t) end }
  end
end
