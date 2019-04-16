def add_two_numbers(first, second)
    carry = 0
    head = tail = ListNode.new(0)

    while first || second
        sum = first&.val.to_i + second&.val.to_i + carry
        carry, sum = sum.divmod(10)

        first, second, tail.val = first&.next, second&.next, sum
        tail.next = ListNode.new(carry) if first || second || carry.positive?

        tail = tail.next
    end

    head
end