--version num
vtos='16.13'
vgg=11159
--version check
if gg.BUILD < vgg then erronum=1 goto  erro end
if gg.getTargetInfo().versionName ~= vtos then erronum=2 goto erro end
gg.clearResults()
gg.alert("神魔v16.13腳本 \n自動偵測APK和PLAY版本 \n此版本新增數據防偷窺 \n腳本作者：OwenChen(陳立山) \n請勿任意販售此腳本 \n請回APK.TW論壇找原帖 \N也請給個讚或留言 感謝 \n找數據+寫腳本也是很累的(˘•ω•˘)");
goto STARE

::STARE::
if gg.getTargetInfo().packageName=='com.madhead.tos.zh.ex' then goto STARE1 end
if gg.getTargetInfo().packageName=='com.madhead.tos.zh' then goto STARE2 end

::STARE1::
function highdh ()
	if gg.isVisible(true) then 
   gg.setVisible(false) 
   end
	gg.searchNumber('3028108285177692702', gg.TYPE_QWORD)
	local result = gg.getResults(1) 
	result[1].value=3026419015128981534
	gg.setValues(result)
	gg.clearResults()
end

function miss ()
	if gg.isVisible(true) then 
   gg.setVisible(false) 
   end
	gg.searchNumber('2229248;369098752:9', gg.TYPE_DWORD)
	local result = gg.getResults(2) 
	result[2].value=369098750
	gg.setValues(result)
	gg.clearResults()
end

function main ()
    local funcTable= gg.multiChoice({'(*ﾟ∀ﾟ*)高攻回', '(*ﾟ∀ﾟ*)MISS'}, {}, '選擇功能')
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
	print("修改完成 腳本作者為Owenchen 請勿販售\n 祝遊戲愉快(・∀・)つ")
end

main()

::STARE2::
function highdh ()
	if gg.isVisible(true) then 
   gg.setVisible(false) 
   end
	gg.searchNumber('3028108285144138270', gg.TYPE_QWORD)
	local result = gg.getResults(1) 
	result[1].value=3026419015128981534
	gg.setValues(result)
	gg.clearResults()
end

function miss ()
	if gg.isVisible(true) then 
   gg.setVisible(false) 
   end
	gg.searchNumber('2229248;369098752:9', gg.TYPE_DWORD)
	local result = gg.getResults(2) 
	result[2].value=369098750
	gg.setValues(result)
	gg.clearResults()
end

function main ()
    local funcTable= gg.multiChoice({'(*ﾟ∀ﾟ*)高攻回', '(*ﾟ∀ﾟ*)MISS'}, {}, '選擇功能')
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
	print("修改完成 腳本作者為Owenchen 請勿販售 \n祝遊戲愉快(・∀・)つ")
end 

main()

::erro::
if erronum==1 then print('請更新GG到最新版本(・∀・)つ') end
if erronum==2 then print('腳本和神魔版本不吻合 \n請更新腳本和遊戲版本 \n祝遊戲愉快(・∀・)つ') end