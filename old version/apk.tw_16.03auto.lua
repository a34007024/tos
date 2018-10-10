--version num
vtos='16.03'
vgg=11159
--version check
if gg.BUILD < vgg then erronum=1 goto  erro end
if gg.getTargetInfo().versionName ~= vtos then erronum=2 goto erro end
gg.clearResults()
gg.alert("神魔v16.03腳本 \n腳本作者：OwenChen \n請勿任意販售此腳本 \nCombo加成請勿和高攻回一起改 \n兩種加成無法同時使用");
goto STARE

::STARE::
if gg.getTargetInfo().packageName=='com.madhead.tos.zh.ex' then goto STARE1 end
if gg.getTargetInfo().packageName=='com.madhead.tos.zh' then goto STARE2 end

::STARE1::
function highdh ()
	gg.searchNumber('3028108280060641822', gg.TYPE_QWORD)
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

function highc ()
	gg.searchNumber('1048576000;177011', gg.TYPE_DWORD)
	local result = gg.getResults(2) 
	result[1].value=1073747000
	gg.clearResults()
end

function highcc ()
	gg.searchNumber('1048576000;177011', gg.TYPE_DWORD)
	local result = gg.getResults(2) 
	result[1].value=1084229375
	gg.clearResults()
end

function main ()
    local funcTable= gg.multiChoice({'高攻回', 'MISS', '200%Combo加成', '500%Combo加成'}, {}, '選擇功能')
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
	if funcTable[3] then
	    highc()
	end
	if funcTable[4] then
	    highcc()
	end
	print("修改完成 腳本作者為Owenchen 請勿販售")
end 

main()

::STARE2::
function highdh ()
	gg.searchNumber('3028108280027087390', gg.TYPE_QWORD)
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

function highc ()
	gg.searchNumber('1048576000;177011', gg.TYPE_DWORD)
	local result = gg.getResults(2) 
	result[1].value=1073747000
	gg.clearResults()
end

function highcc ()
	gg.searchNumber('1048576000;177011', gg.TYPE_DWORD)
	local result = gg.getResults(2) 
	result[1].value=1084229375
	gg.clearResults()
end

function main ()
    local funcTable= gg.multiChoice({'高攻回', 'MISS', '200%Combo加成', '500%Combo加成'}, {}, '選擇功能')
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
	if funcTable[3] then
	    highc()
	end
	if funcTable[4] then
	    highcc()
	end
	print("修改完成 腳本作者為Owenchen 請勿販售")
end 

main()

::erro::
if erronum==1 then print('請更新GG到最新版本') end
if erronum==2 then print('腳本和神魔版本不吻合 \n請確認版本') end