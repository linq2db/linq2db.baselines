﻿BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SET GLOBAL local_infile=ON

BeforeExecute
INSERT ASYNC BULK `AllTypesNoYear`(bigintDataType, smallintDataType, tinyintDataType, mediumintDataType, intDataType, numericDataType, decimalDataType, doubleDataType, floatDataType, dateDataType, datetimeDataType, timestampDataType, timeDataType, charDataType, varcharDataType, textDataType, binaryDataType, varbinaryDataType, blobDataType, bitDataType, enumDataType, setDataType, intUnsignedDataType

BeforeExecute
INSERT ASYNC BULK `AllTypesNoYear`(bigintDataType, smallintDataType, tinyintDataType, mediumintDataType, intDataType, numericDataType, decimalDataType, doubleDataType, floatDataType, dateDataType, datetimeDataType, timestampDataType, timeDataType, charDataType, varcharDataType, textDataType, binaryDataType, varbinaryDataType, blobDataType, bitDataType, enumDataType, setDataType, intUnsignedDataType

BeforeExecute
INSERT ASYNC BULK `AllTypesNoYear`(bigintDataType, smallintDataType, tinyintDataType, mediumintDataType, intDataType, numericDataType, decimalDataType, doubleDataType, floatDataType, dateDataType, datetimeDataType, timestampDataType, timeDataType, charDataType, varcharDataType, textDataType, binaryDataType, varbinaryDataType, blobDataType, bitDataType, enumDataType, setDataType, intUnsignedDataType

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`AllTypesNoYear` `t1`
WHERE
	`t1`.`varcharDataType` = '_btest' AND `t1`.`varcharDataType` IS NOT NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
DECLARE @take Int32
SET     @take = 10

SELECT
	`t1`.`ID`,
	`t1`.`bigintDataType`,
	`t1`.`smallintDataType`,
	`t1`.`tinyintDataType`,
	`t1`.`mediumintDataType`,
	`t1`.`intDataType`,
	`t1`.`numericDataType`,
	`t1`.`decimalDataType`,
	`t1`.`doubleDataType`,
	`t1`.`floatDataType`,
	`t1`.`dateDataType`,
	`t1`.`datetimeDataType`,
	`t1`.`timestampDataType`,
	`t1`.`timeDataType`,
	`t1`.`charDataType`,
	`t1`.`varcharDataType`,
	`t1`.`textDataType`,
	`t1`.`binaryDataType`,
	`t1`.`varbinaryDataType`,
	`t1`.`blobDataType`,
	`t1`.`bitDataType`,
	`t1`.`enumDataType`,
	`t1`.`setDataType`,
	`t1`.`intUnsignedDataType`
FROM
	`AllTypesNoYear` `t1`
WHERE
	`t1`.`varcharDataType` = '_btest' AND `t1`.`varcharDataType` IS NOT NULL
ORDER BY
	`t1`.`ID`
LIMIT @take

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`AllTypes`
WHERE
	`AllTypes`.`varcharDataType` = '_btest' AND `AllTypes`.`varcharDataType` IS NOT NULL

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DELETE  
FROM
	`AllTypesNoYear`
WHERE
	`AllTypesNoYear`.`varcharDataType` = '_btest' AND `AllTypesNoYear`.`varcharDataType` IS NOT NULL

