﻿BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `NeedS.esca Pin``g`

BeforeExecute
-- MariaDB MySql.Official MySql

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
-- MariaDB MySql.Official MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Bit_1 UInt64
SET     @Bit_1 = NULL
DECLARE @Bit_2 UInt64
SET     @Bit_2 = NULL
DECLARE @Bit_3 UInt64
SET     @Bit_3 = NULL
DECLARE @Bit_4 UInt64
SET     @Bit_4 = NULL
DECLARE @Bit_5 UInt64
SET     @Bit_5 = NULL
DECLARE @Bit_6 UInt64
SET     @Bit_6 = NULL
DECLARE @Binary_1 Blob -- Binary
SET     @Binary_1 = NULL
DECLARE @Binary_2 Blob -- Binary
SET     @Binary_2 = NULL
DECLARE @Binary_3 VarChar -- String
SET     @Binary_3 = NULL
DECLARE @Binary_4 VarChar -- String
SET     @Binary_4 = NULL
DECLARE @VarBinary_1 Blob -- Binary
SET     @VarBinary_1 = NULL
DECLARE @VarBinary_2 Blob -- Binary
SET     @VarBinary_2 = NULL
DECLARE @Blob_1 Blob -- Binary
SET     @Blob_1 = NULL
DECLARE @Blob_2 Blob -- Binary
SET     @Blob_2 = NULL
DECLARE @TinyBlob_1 Blob -- Binary
SET     @TinyBlob_1 = NULL
DECLARE @TinyBlob_2 Blob -- Binary
SET     @TinyBlob_2 = NULL
DECLARE @MediumBlob_1 Blob -- Binary
SET     @MediumBlob_1 = NULL
DECLARE @MediumBlob_2 Blob -- Binary
SET     @MediumBlob_2 = NULL
DECLARE @LongBlob_1 Blob -- Binary
SET     @LongBlob_1 = NULL
DECLARE @LongBlob_2 Blob -- Binary
SET     @LongBlob_2 = NULL

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
(
	@Id,
	@Bit_1,
	@Bit_2,
	@Bit_3,
	@Bit_4,
	@Bit_5,
	@Bit_6,
	@Binary_1,
	@Binary_2,
	@Binary_3,
	@Binary_4,
	@VarBinary_1,
	@VarBinary_2,
	@Blob_1,
	@Blob_2,
	@TinyBlob_1,
	@TinyBlob_2,
	@MediumBlob_1,
	@MediumBlob_2,
	@LongBlob_1,
	@LongBlob_2
)

BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Bit_1 UInt64
SET     @Bit_1 = 18446744073709551615
DECLARE @Bit_2 UInt64
SET     @Bit_2 = 9223372036854775807
DECLARE @Bit_3 UInt64
SET     @Bit_3 = 18446744073709551615
DECLARE @Bit_4 UInt64
SET     @Bit_4 = 1073741823
DECLARE @Bit_5 UInt64
SET     @Bit_5 = 1
DECLARE @Bit_6 UInt64
SET     @Bit_6 = 1
DECLARE @Binary_1 Blob(3) -- Binary
SET     @Binary_1 = 0x010203
DECLARE @Binary_2 Blob(3) -- Binary
SET     @Binary_2 = 0x040506
DECLARE @Binary_3 Blob(3) -- Object
SET     @Binary_3 = 0x070809
DECLARE @Binary_4 Blob(3) -- Object
SET     @Binary_4 = 0x0A0B0C
DECLARE @VarBinary_1 Blob(3) -- Binary
SET     @VarBinary_1 = 0x0D0E0F
DECLARE @VarBinary_2 Blob(3) -- Binary
SET     @VarBinary_2 = 0x101112
DECLARE @Blob_1 Blob(3) -- Binary
SET     @Blob_1 = 0x131415
DECLARE @Blob_2 Blob(3) -- Binary
SET     @Blob_2 = 0x161718
DECLARE @TinyBlob_1 Blob(3) -- Binary
SET     @TinyBlob_1 = 0x191A1B
DECLARE @TinyBlob_2 Blob(3) -- Binary
SET     @TinyBlob_2 = 0x1C1D1E
DECLARE @MediumBlob_1 Blob(3) -- Binary
SET     @MediumBlob_1 = 0x1F2021
DECLARE @MediumBlob_2 Blob(3) -- Binary
SET     @MediumBlob_2 = 0x222324
DECLARE @LongBlob_1 Blob(3) -- Binary
SET     @LongBlob_1 = 0x252627
DECLARE @LongBlob_2 Blob(3) -- Binary
SET     @LongBlob_2 = 0x28292A

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
(
	@Id,
	@Bit_1,
	@Bit_2,
	@Bit_3,
	@Bit_4,
	@Bit_5,
	@Bit_6,
	@Binary_1,
	@Binary_2,
	@Binary_3,
	@Binary_4,
	@VarBinary_1,
	@VarBinary_2,
	@Blob_1,
	@Blob_2,
	@TinyBlob_1,
	@TinyBlob_2,
	@MediumBlob_1,
	@MediumBlob_2,
	@LongBlob_1,
	@LongBlob_2
)

BeforeExecute
-- MariaDB MySql.Official MySql (asynchronously)

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
-- MariaDB MySql.Official MySql

DROP TABLE IF EXISTS `NeedS.esca Pin``g`

