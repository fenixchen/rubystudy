#!/usr/bin/ruby -w


PRINTF_START_MAGIC=0x37210000

PRINTF_NORMAL_EVENT = 0
PRINTF_EVENT_IN_PROGRESS = 1
PRINTF_EVENT_DONE = 2

@printf_len = 0
@printf_str = ""
def parsePrintfEvent(event)
    if event & 0xFFFF0000 == PRINTF_START_MAGIC
        @printf_len = event & ~PRINTF_START_MAGIC
        @printf_str = ""
        return PRINTF_START_MAGIC
    end
    
    if (@printf_len != 0)
        ch = event & 0xFF
        if ch != 0
            @printf_str << ch.chr
        end
        ch = (event >> 8) & 0xFF
        if ch != 0
            @printf_str << ch.chr
        end
        ch = (event >> 16) & 0xFF
        if ch != 0
            @printf_str << ch.chr
        end
        ch = (event >> 24) & 0xFF
        if ch != 0
            @printf_str << ch.chr
        end
        @printf_len -= 4
        if @printf_len  == 0
            return PRINTF_EVENT_DONE
        else
            return PRINTF_EVENT_IN_PROGRESS
        end
    end

    return PRINTF_NORMAL_EVENT
end


def getEvent(event)
    result = parsePrintfEvent(event)
    if result == PRINTF_NORMAL_EVENT
        puts "Detected event: 0x%08x" % event
    elsif result == PRINTF_EVENT_DONE
        puts "log: %s" % @printf_str
    else
        return
    end
end

getEvent(0x55555666)
getEvent(0x000000ef)
getEvent(0x00000040)
getEvent(0x00000017)
getEvent(0x00000100)
getEvent(0xb0070000)
getEvent(0xb0070001)
getEvent(0xb007e002)
getEvent(0xb0070002)
getEvent(0x00000000)
getEvent(0xb0070003)
getEvent(0xb0070004)
getEvent(0x3721000c)
getEvent(0x6c6c6163)
getEvent(0x6f746320)
getEvent(0x32300072)
getEvent(0x37210010)
getEvent(0x6c6c6163)
getEvent(0x38783020)
getEvent(0x33366362)
getEvent(0x00396136)
getEvent(0x37210014)
getEvent(0x28413a41)
getEvent(0x6f632029)
getEvent(0x7274736e)
getEvent(0x6f746375)
getEvent(0x3ff90072)
getEvent(0x37210010)
getEvent(0x6c6c6163)
getEvent(0x38783020)
getEvent(0x32306562)
getEvent(0x00313131)
getEvent(0x55555666)
getEvent(0x000000ef)
getEvent(0x00000040)
getEvent(0x00000017)
getEvent(0x00000100)
getEvent(0xb0070005)
getEvent(0x00008503)
getEvent(0x12345004)
getEvent(0xff001327)
getEvent(0xbbbbbb57)
getEvent(0x37210010)
getEvent(0x5f657374)
getEvent(0x64616f6c)
getEvent(0x6c616320)
getEvent(0x0a64656c)
getEvent(0x37210010)
getEvent(0x78657374)
getEvent(0x5f415f78)
getEvent(0x203d2069)
getEvent(0x0a303031)
getEvent(0xd9000004)
getEvent(0xd9005011)
getEvent(0xd9000001)
getEvent(0xd900ffff)
getEvent(0xd9000000)
getEvent(0xd900ffff)
getEvent(0xd9001011)
getEvent(0xd9000780)
getEvent(0xd9000438)
getEvent(0xd9001022)
getEvent(0xd90002d0)
getEvent(0xd9000120)
getEvent(0x00005176)
getEvent(0x00005176)
getEvent(0xb0020000)
getEvent(0xb002d100)
getEvent(0xb002d1ff)
getEvent(0x00001000)
getEvent(0x00000000)
getEvent(0x00000000)
getEvent(0xb0020001)
getEvent(0xb0060000)
getEvent(0xd9000004)
getEvent(0xd9005011)
getEvent(0xd9000001)
getEvent(0xd9000002)
getEvent(0xd9000000)
getEvent(0xd9000002)
getEvent(0xd900003c)
getEvent(0xd900003c)
getEvent(0x00089765)
getEvent(0xb003bb22)
getEvent(0x00000000)
getEvent(0xb003bb33)
getEvent(0x00000000)
getEvent(0xb002d200)
getEvent(0x00005176)
getEvent(0x00005176)
getEvent(0xb0025176)
getEvent(0xd9000005)
getEvent(0xd9005011)
getEvent(0xd9000001)
getEvent(0xd9000000)
getEvent(0xd9000000)
getEvent(0xd9000002)
getEvent(0xd900003c)
getEvent(0xd900003c)
getEvent(0xb002d2ff)
getEvent(0xb0020002)
getEvent(0xb002d400)
getEvent(0xb002d404)
getEvent(0xb002d403)
getEvent(0xb002d401)
getEvent(0xd9006011)
getEvent(0xd9005011)
getEvent(0xd9000001)
getEvent(0xd9000000)
getEvent(0xd9000000)
getEvent(0xd9000002)
getEvent(0xd9000032)
getEvent(0xd9000032)
getEvent(0xd9001022)
getEvent(0xd9000298)
getEvent(0xd9000118)
getEvent(0xd9006012)
getEvent(0xd9005011)
getEvent(0xd9000001)
getEvent(0xd9000000)
getEvent(0xd9000001)
getEvent(0xd9000002)
getEvent(0xd9000032)
getEvent(0xd9000032)
getEvent(0xb002d402)
getEvent(0xb002d4ff)
getEvent(0xb0020003)
getEvent(0xd9000004)
getEvent(0xd9006011)
getEvent(0xd9005011)
getEvent(0xd9000001)
getEvent(0xd9000000)
getEvent(0xd9000000)
getEvent(0xd9000002)
getEvent(0xd900003c)
getEvent(0xd900003c)
getEvent(0xb0037774)
getEvent(0x00000001)
getEvent(0x00000000)
getEvent(0xb003ffbb)
getEvent(0xb0037771)
getEvent(0x00000000)
getEvent(0xb0037772)
getEvent(0x00000001)
getEvent(0xb00377a1)
getEvent(0x00000000)
getEvent(0x00000004)
getEvent(0xb00377a2)
getEvent(0xb0037773)
getEvent(0xb0037774)
getEvent(0x00000000)
getEvent(0x000111d4)
getEvent(0xb00377a4)
getEvent(0xd8009999)
getEvent(0x00000002)
getEvent(0x00000003)
getEvent(0x00040000)
getEvent(0xb003ffaa)

