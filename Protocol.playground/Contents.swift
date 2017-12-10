//: Playground - noun: a place where people can play

import Foundation

func bytes(from hex: String) -> [UInt8] {
	var bytes = [UInt8]()
	var cursor = hex.startIndex
	while cursor < hex.endIndex {
		let nextCursor = hex.index(cursor, offsetBy: 2)
		bytes.append(UInt8(hex[cursor..<nextCursor], radix: 16)!)
		cursor = nextCursor
	}
	return bytes
}

let x = [0,12,3,4]

let c0 = Packet(bytes: bytes(from: "10144c3100000000000000000100000000000000"))

let s0 = Packet(bytes: bytes(from: "10144c3100000000002200000200000200000000"))

let c1 = Packet(bytes: bytes(from: "800c4c310000000000450000"))

let s1 = Packet(bytes: bytes(from: "0d8880020000000000000001000c00005f76657200020018003400005f70696e4154454d2054656c65766973696f6e2053747564696f000000000000001000004d507270002f000001000000001c00005f746f700112020000020004000000010000010000000000000c00005f4d654300017270000c3bc05f6d706c14003bd4001072705f4d7643010a010000000000000c00a45f414d4307000000006c47405f564d4300083bd4000000000000008000000000010000000000004000000000029f1940000000800000000003125474000000400000000004107bb400000010000000000500000000000020000000000690edf8000000400000000007a413d40000008000000000000c00005f4d414364000000000c8648506f777201000000000cee2c5669644d0690ee30002cc99c496e50720000426c61636b000000004000000001501249980000426c6b0001480100010001901201002cc99c496e5072000128312920526173706265727279000000000600005449544c000100020002000f1201002c0000496e507200022832292000ec00001770000000000000177050102d00000000010002000200101201002c6c60496e5072000328332920001c00000000509f1940800000a400002d00502400080003000100001201002c0110496e507200042834292050545a000d7000a2da0d00000003000050545a0000000003000200121201002c1717496e50720005283529204b6c6176696572000000509f1940509f4b4c4156003c0001000100951201002c0014496e50720006283629204f7267656c0000000078501251c050904f52474c001c00010001009f1201002c0e1c496e507203e8436f6c6f722042617273000000000000000050124261727301000100010002101201002ccba0496e507207d1436f6c6f72203100177050b07334a3ff000050a4436f6c31011c0100010003900201002c0000496e507207d2436f6c6f7220320000a050243808509f759c50a0436f6c3201980100010003000201002c0000496e50720bc24d6564696120506c617965722031000faf8050104d503100011701000100049f1201002c2020496e50720bc34d6564696120506c617965722031204b657900004d50314b01f00100010005001201002c3131496e50720bcc4d6564696120506c617965722032009fd68400004d50320001a20100010004001201002c4762496e50720bcd4d6564696120506c617965722032204b657900904d50324b01840100010005901201002c00d3496e5072271a50726f6772616d00dc615090f1840000000c509050726f6700f80100010080000200002c0000496e5072271b5072657669657700000050115b9c0000007c50905072657600f80100010080000200002c0000496e50721b59436c65616e2046656564203100005090f10000004366643101000100010080000200002c8098496e50721b5a436c65616e204665656420320000000000a0000043666432011c0100010080900200000c00004d76564d000780fc000c58384d76564d01063030000c59944d76564d0207007c000c00a24d76564d03068098000c53504d76564d04040000000c25744d76564d050500a0000c00a04d76564d06060000000cf1e64d76564d07070001000c80fc4d76507200010100001000014d76496e0000271b00000001001000a24d76496e0001271a0024535000103d1c4d76496e00020001006f8924001000004d76496e0003000200002ccc001038084d76496e00040003000a06f0001040004d76496e00050bc20090f23e001000004d76496e00060004000032f00010af804d76496e00070005000000000010f2e44d76496e0008000600000000001000014d76496e00090bcc00000006000c272750726749004600030010742050727649005d0004006469750010665854725353000001000190f2f8000c7f145472507200002424"))
let s2 = Packet(bytes: bytes(from: "0d8c8002000000000000000200100000547250730000191800000000000c696e544d78500019656c000c697354447050001907d1001c00005457705000190600000007d1138800001388138800000000001c6f705444765000020004000000010000010000000000000c0000001c654354537450000101c001f402bc000000020049002200057643000c01004b654f6e000000a4001c4d434b6542500000000000000000000000d42328dcd8c1803e80001400004b654c6d0000004001f402bc009f1940001400804b65436b0000000003e803840000000000187bb44b655074000006001388138800001388138800000044edf84b6544560000000007a413d40000008000000000000c00005f4d414364000000000c8648506f777201000000000cee2c5669644d0690ee30002cc99c496e50720010426c4b6546530000004000000001003c49984b4b46506b0001480100010001901201002cc99c496e5072000128312920526173706265727279000000000600005449544c000100020002003c12014b4b4650496e507200022832292000ec00001770000000000000177050102d00000000010002000200101201002c6c60496e5072000328330010001c44736b42009f0000000000a4001c2d0044736b500000190001f402bc00002328dcd8c1803e8028340010505444736b5300000000190000030010505444736b420103000000001201001c171744736b500100190001f402bc00002328dcd8c1803e80194000104b4c44736b530100000019951201000c00144674625000192836000c4f724674625300000019001051c0436f6c56004c01f403e801f400101201436f6c56016e010e03e801f4002072204d5066650000000000000000000000000000000000000000001000000020cba04d50666500d100010000000000000000000000000000000000a400000020011c4d506665009000020000000000000000000000000000000000000000002038084d50666500a0000300000000000000000000000000000000006e000000204d654d506665006c00040000000000000000000000000000000000000000002012014d506665006e000500000000000000000000000000000000004b000000204d504d506665000000060000000000000000000000000000000000690000002061794d506665009f000700000000000000000000000000000000002c0000002050724d5066650069000800000000000000000000000000000000004b0000002001004d506665002c000900000000000000000000000000000000009000000020000c4d5066650067000a00000000000000000000000000000000001b0000002069654d5066650011000b0000000000000000000000000000000000000000002000004d5066650059000c0000000000000000000000000000000000000000002001004d5066650000000d0000000000000000000000000000000000650000002000004d5066650000000e0000000000000000000000000000000000760000002080fc4d5066650076000f00000000000000000000000000000000000c00000020564d4d506665000c00100000000000000000000000000000000000050000002000a04d506665000600110000000000000000000000000000000000760000002001004d506665007600120000000000000000000000000000000000010000002053504d506665007600130000000000000000000000000000000000030000000c2ccc4d50434500010000000c00034d50434501010100001c496e52584d530000f23e000000000000006e00000004000200f0001caf8052584350000001000000000000000000000000000000000600280000525853530000496e00000000ffffffff0000000000726749000000000000000000007649000c00045258434300000058001c535352584d530001f2f800000000000000720000002400020024"))
let s3 = Packet(bytes: bytes(from: "0d8c80020000000000000003001c000052584350000101000000000000000000000000000000656c0028697352585353000107d100000000ffffffff00000000000007d1000000000000000000000000000c6f705258434300010004001c000152584d5300020000000000000000004300000050000200c0001c02bc5258435000020100000500000000000000000000000000a400284d43525853530002000000000000ffffffff0000000000803e80000000000000000000000040000c02bc5258434300020080001c436b52584d530003038400000000000000b40000007400020000001c13885258435000030100004400000000000000000000000013d400280080525853530003000000000000ffffffff00000000006f777200000000000000000000644d000cee305258434300030072001c426c414d49500001004000010002003c80000000000000000148001c0100414d49500002009c00020002000180000000000000706265001c7900414d495000030049000300010002800000000000004b4650001c5072414d4950000400ec00040002000080000000000000102d00001c0001414d49500005000100050001006e8000000000000010001c001c6b42414d4950000600a400060001007380000000000000f402bc001c2328414d4950044d0234000100400173ff65000000000000000300105054414d4d4fff6500000000120100201717414d546c0007000100000200000300000400000500000600044d014c000c6b534c4b535400000001001000145f546c4300010000060c4f7200106253546c496e0006000001020000004001f4546c5372001200000000010000020000030100040200050000060003e80007d10007d2000bc2000bc3000bcc000bcd00271a00271b001b59001b5a00001c0001546c46630006000100000200000300000400000500000600000c66654d5250720000ffff000c00004d52635300000000001400004d507270000001000004000074657374001000004d507270000100000000000000104d654d5072700002000000000000001000004d5072700003000000000000001012014d5072700004000000000000001000004d507270000500000000000000104d504d5072700006000000000000001000004d5072700007000000000000001061794d5072700008000000000000001000004d5072700009000000000000001050724d507270000a000000000000001000004d507270000b000000000000001001004d507270000c000000000000001000004d507270000d0000000000000010000c4d507270000e000000000000001000004d507270000f000000000000001069654d5072700010000000000000001000004d5072700011000000000000001000004d5072700012000000000000001000004d5072700013000000000000001001004d5072700014000000000000001000004d5072700015000000000000001000004d5072700016000000000000001000004d5072700017000000000000001080fc4d5072700018000000000000001000004d50727000190000000000000010564d4d507270001a000000000000001000004d507270001b000000000000001000a04d507270001c000000000000001000004d507270001d000000000000001001004d507270001e000000000000001000004d507270001f000000000000001053504d5072700020000000000000001000004d507270002100000000000000102ccc4d5072700022000000000000001043454d50727000230000000000000010f23e4d5072700024000000000000001000f04d5072700025000000000000001000004d5072700026000000000000001000004d50727000270000000000000010ffff4d5072700028000000000000001000004d5072700029000000000000001000584d507270002a000000000000001000004d507270002b000000000000"))
let s4 = Packet(bytes: bytes(from: "0ba480020000000000000004001000004d507270002c000000000000001000004d507270002d000000000000001053534d507270002e000000000000001000004d507270002f000000000000001000004d5072700030000000000000001000014d5072700031000000000000001000434d5072700032000000000000001043504d5072700033000000000000001000004d5072700034000000000000001000004d507270003500000000000000103e804d5072700036000000000000001002bc4d507270003700000000000000104d534d5072700038000000000000001000744d5072700039000000000000001001004d507270003a000000000000001013d44d507270003b000000000000001000004d507270003c000000000000001000004d507270003d000000000000001043434d507270003e000000000000001000404d507270003f000000000000001001484d5072700040000000000000001000024d5072700041000000000000001079004d5072700042000000000000001080004d5072700043000000000000001049504d5072700044000000000000001000004d5072700045000000000000001000014d50727000460000000000000010001c4d5072700047000000000000001000014d5072700048000000000000001023284d50727000490000000000000010ff654d507270004a00000000000000104d4f4d507270004b0000000000000010546c4d507270004c000000000000001000054d507270004d000000000000001053544d507270004e000000000000001000004d507270004f000000000000001000004d5072700050000000000000001000004d5072700051000000000000001005004d50727000520000000000000010000b4d507270005300000000000000101b594d5072700054000000000000001000014d5072700055000000000000001006004d5072700056000000000000001000004d5072700057000000000000001072704d5072700058000000000000001000004d507270005900000000000000104d654d507270005a000000000000001000004d507270005b000000000000001012014d507270005c000000000000001000004d507270005d00000000000000104d504d507270005e000000000000001000004d507270005f000000000000001061794d5072700060000000000000001000004d5072700061000000000000001050724d5072700062000000000000001000004d5072700063000000000000000c01004343737400001388000c0000496e436d01507270"))

let s5 = Packet(bytes: bytes(from: "080c80020000000000000005"))

let c2 = Packet(bytes: bytes(from: "800c800200050000008d0000"))
