BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NeedS.esca Pin``g`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NeedS.esca Pin``g`
(
	`ne.eds ``escaPing` INT          NOT NULL,
	`Bit_1`             bit(64)          NULL,
	`Bit_2`             bit(63)          NULL,
	`Bit_3`             bit(64)          NULL,
	`Bit_4`             bit(30)          NULL,
	`Bit_5`             bit(1)           NULL,
	`needs escaping2`   bit(1)           NULL,
	`Binary_1`          binary(3)        NULL,
	`Binary_2`          binary(3)        NULL,
	`Binary_3`          binary(3)        NULL,
	`Binary_4`          binary(3)        NULL,
	`VarBinary_1`       varbinary(3)     NULL,
	`VarBinary_2`       varbinary(3)     NULL,
	`Blob_1`            blob             NULL,
	`Blob_2`            blob             NULL,
	`TinyBlob_1`        tinyblob         NULL,
	`TinyBlob_2`        tinyblob         NULL,
	`MediumBlob_1`      mediumblob       NULL,
	`MediumBlob_2`      mediumblob       NULL,
	`LongBlob_1`        longblob         NULL,
	`LongBlob_2`        longblob         NULL,

	CONSTRAINT `PK_NeedS.esca Pin``g` PRIMARY KEY CLUSTERED (`ne.eds ``escaPing`)
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SET GLOBAL local_infile=ON

BeforeExecute
INSERT BULK `NeedS.esca Pin``g`(ne.eds `escaPing, Bit_1, Bit_2, Bit_3, Bit_4, Bit_5, needs escaping2, Binary_1, Binary_2, Binary_3, Binary_4, VarBinary_1, VarBinary_2, Blob_1, Blob_2, TinyBlob_1, TinyBlob_2, MediumBlob_1, MediumBlob_2, LongBlob_1, LongBlob_2

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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `NeedS.esca Pin``g`

