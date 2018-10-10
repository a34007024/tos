--version num
vtos='16.13'
vgg=11159
--version check
if gg.BUILD < vgg then erronum=1 goto  erro end
if gg.getTargetInfo().versionName ~= vtos then erronum=2 goto erro end
gg.clearResults()
gg.alert("*神魔之塔版本v16.13\n*腳本製作者:阿神\n*更新日期 2018.10.04\n*免費腳本學術專用請勿販售!!\n***使用後被鎖皆不負責***");
goto STARE

::STARE::
if gg.getTargetInfo().packageName=='com.madhead.tos.zh.ex' then goto STARE1 end
if gg.getTargetInfo().packageName=='com.madhead.tos.zh' then goto STARE2 end

::STARE1::
function highatk ()
	gg.searchNumber('3028108285177692702', gg.TYPE_QWORD)
	local result = gg.getResults(1) 
	if(#result==1) then
	result[1].value=3026419015128981534
	gg.setValues(result)
	print("高功回 修改成功")
	end
        if gg.getResultCount()==0 then print('高功回 修改失敗')
	end
	gg.clearResults()
end

function miss ()
	gg.searchNumber('2229248;369098752:11', gg.TYPE_DWORD)
	local result = gg.getResults(4) 
	if(#result==4) then
	result[2].value=369098750
	gg.setValues(result)
	print("MISS 修改成功")
	end
        if gg.getResultCount()==0 then print('MISS 修改失敗')
	end
	gg.clearResults()
end

function main ()
    local funcTable= gg.multiChoice({'1.高功回', '2.MISS'}, {}, '選擇功能')
    if not funcTable then
	print("已取消修改 感謝使用")
	return
	end
	gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
	if funcTable[1] then
        highatk()
	end
        if funcTable[2] then
	miss()
        end
        print("更新作者:阿神 免費腳本請勿販售 感謝您的使用")
end 

main()

::STARE2::
function highatk ()
	gg.searchNumber('3028108285144138270', gg.TYPE_QWORD)
	local result = gg.getResults(1) 
	if(#result==1) then
	result[1].value=3026419015128981534
	gg.setValues(result)
	print("高功回 修改成功")
	end
        if gg.getResultCount()==0 then print('高功回 修改失敗')
	end
	gg.clearResults()
end

function miss ()
	gg.searchNumber('2229248;369098752:11', gg.TYPE_DWORD)
	local result = gg.getResults(4) 
	if(#result==4) then
	result[2].value=369098750
	gg.setValues(result)
	print("MISS 修改成功")
	end
        if gg.getResultCount()==0 then print('MISS 修改失敗')
	end
	gg.clearResults()
end

function main ()
    local funcTable= gg.multiChoice({'1.高功回', '2.MISS'}, {}, '選擇功能')
    if not funcTable then
	    print("已取消修改 感謝使用")
	    return
	end
	gg.setRanges(bit32.bxor(gg.REGION_C_ALLOC,gg.REGION_ANONYMOUS))
	if funcTable[1] then
	    highatk()
	end
        if funcTable[2] then
	    miss()
        end
        print("更新作者:阿神 免費腳本請勿販售 感謝您的使用")
end 

main()

::erro::
if erronum==1 then print('請更新GG到最新版本') end
if erronum==2 then print('此腳本版本跟神魔版本不吻合 \n請查看腳本的最新版本') end