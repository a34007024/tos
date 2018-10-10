function highdh ()
	gg.searchNumber('3028108279439884830', gg.TYPE_QWORD)
	local result = gg.getResults(1) 
	result[1].value=3026419015128981534
	gg.setValues(result)
	gg.clearResults()
end

function miss ()
	gg.searchNumber('2229248;369098752:11', gg.TYPE_DWORD)
	local result = gg.getResults(2) 
	result[2].value=369098750
	gg.setValues(result)
	gg.clearResults()
end

function main ()
    local funcTable= gg.multiChoice({'高攻回', 'MISS'}, {}, '選擇功能')
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