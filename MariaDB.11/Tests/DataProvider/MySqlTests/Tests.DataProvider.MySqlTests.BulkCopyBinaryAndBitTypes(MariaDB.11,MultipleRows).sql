BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SET GLOBAL local_infile=ON

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

INSERT INTO `NeedS.esca Pin``g`
(
	`ne.eds ``escaPing`,
	`Bit_1`,
	`Bit_2`,
	`Bit_3`,
	`Bit_4`,
	`Bit_5`,
	`needs escaping2`,
	`Binary_1`,
	`Binary_2`,
	`Binary_3`,
	`Binary_4`,
	`VarBinary_1`,
	`VarBinary_2`,
	`Blob_1`,
	`Blob_2`,
	`TinyBlob_1`,
	`TinyBlob_2`,
	`MediumBlob_1`,
	`MediumBlob_2`,
	`LongBlob_1`,
	`LongBlob_2`
)
VALUES
(1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,18446744073709551615,9223372036854775807,18446744073709551615,1073741823,1,1,0x010203,0x040506,0x070809,0x0A0B0C,0x0D0E0F,0x101112,0x131415,0x161718,0x191A1B,0x1C1D1E,0x1F2021,0x222324,0x252627,0x28292A)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`ne.eds ``escaPing`,
	`t1`.`Bit_1`,
	`t1`.`Bit_2`,
	`t1`.`Bit_3`,
	`t1`.`Bit_4`,
	`t1`.`Bit_5`,
	`t1`.`needs escaping2`,
	`t1`.`Binary_1`,
	`t1`.`Binary_2`,
	`t1`.`Binary_3`,
	`t1`.`Binary_4`,
	`t1`.`VarBinary_1`,
	`t1`.`VarBinary_2`,
	`t1`.`Blob_1`,
	`t1`.`Blob_2`,
	`t1`.`TinyBlob_1`,
	`t1`.`TinyBlob_2`,
	`t1`.`MediumBlob_1`,
	`t1`.`MediumBlob_2`,
	`t1`.`LongBlob_1`,
	`t1`.`LongBlob_2`
FROM
	`NeedS.esca Pin``g` `t1`
ORDER BY
	`t1`.`ne.eds ``escaPing`

