BeforeExecute
INSERT ASYNC BULK `AllTypesNoYear`(intUnsignedDataType, setDataType, enumDataType, bitDataType, blobDataType, varbinaryDataType, binaryDataType, textDataType, varcharDataType, charDataType, timeDataType, timestampDataType, datetimeDataType, dateDataType, floatDataType, doubleDataType, decimalDataType, numericDataType, intDataType, mediumintDataType, tinyintDataType, smallintDataType, bigintDataType

BeforeExecute
INSERT ASYNC BULK `AllTypesNoYear`(intUnsignedDataType, setDataType, enumDataType, bitDataType, blobDataType, varbinaryDataType, binaryDataType, textDataType, varcharDataType, charDataType, timeDataType, timestampDataType, datetimeDataType, dateDataType, floatDataType, doubleDataType, decimalDataType, numericDataType, intDataType, mediumintDataType, tinyintDataType, smallintDataType, bigintDataType

BeforeExecute
INSERT ASYNC BULK `AllTypesNoYear`(intUnsignedDataType, setDataType, enumDataType, bitDataType, blobDataType, varbinaryDataType, binaryDataType, textDataType, varcharDataType, charDataType, timeDataType, timestampDataType, datetimeDataType, dateDataType, floatDataType, doubleDataType, decimalDataType, numericDataType, intDataType, mediumintDataType, tinyintDataType, smallintDataType, bigintDataType

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Count(*)
FROM
	`AllTypesNoYear` `_`
WHERE
	`_`.`varcharDataType` = '_btest'

BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @take Int32
SET     @take = 10

SELECT
	`_`.`intUnsignedDataType`,
	`_`.`setDataType`,
	`_`.`enumDataType`,
	`_`.`bitDataType`,
	`_`.`blobDataType`,
	`_`.`varbinaryDataType`,
	`_`.`binaryDataType`,
	`_`.`textDataType`,
	`_`.`varcharDataType`,
	`_`.`charDataType`,
	`_`.`timeDataType`,
	`_`.`timestampDataType`,
	`_`.`datetimeDataType`,
	`_`.`dateDataType`,
	`_`.`floatDataType`,
	`_`.`doubleDataType`,
	`_`.`decimalDataType`,
	`_`.`numericDataType`,
	`_`.`intDataType`,
	`_`.`mediumintDataType`,
	`_`.`tinyintDataType`,
	`_`.`smallintDataType`,
	`_`.`bigintDataType`,
	`_`.`ID`
FROM
	`AllTypesNoYear` `_`
WHERE
	`_`.`varcharDataType` = '_btest'
ORDER BY
	`_`.`ID`
LIMIT @take

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE `t1`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`varcharDataType` = '_btest'

BeforeExecute
-- MariaDB MySqlConnector MySql

DELETE `t1`
FROM
	`AllTypesNoYear` `t1`
WHERE
	`t1`.`varcharDataType` = '_btest'

