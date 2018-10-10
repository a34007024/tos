function highdh ()
	gg.searchNumber('1Eh;02h;6Fh;D7h;6Ch;00h;06h;2Ah::8', gg.TYPE_BYTE)
	local result = gg.getResults(8) 
	if(gg.getResultCount()==8) then
		result[2].value=0x20
		result[3].value=0x40
		result[4].value=0x42
		result[5].value=0x0f
		result[6].value=0x00
		result[7].value=0x00
		result[8].value=0x2a
		gg.setValues(result)
		print("高攻回")
	end
	gg.clearResults()
end

function miss ()
	gg.searchNumber('04h;22h;00h;00h;00h;00h;16h;73h::8', gg.TYPE_BYTE)
	local result = gg.getResults(16) 
	if(gg.getResultCount()==16) then
		result[5].value=0x80
		result[6].value=0x3f
		result[7].value=0x17
		gg.setValues(result)
		print("miss")
	end
	gg.clearResults()
end

function main ()
    local funcTable= gg.multiChoice({'高攻回', 'miss'}, {}, '選擇功能')
    if not funcTable then
	    print("取消修改")
	    return
	end
	gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
	if funcTable[1] then
	    highdh()
	end

	if funcTable[2] then
	    miss()
	end
	print("修改完成")
end 

main()