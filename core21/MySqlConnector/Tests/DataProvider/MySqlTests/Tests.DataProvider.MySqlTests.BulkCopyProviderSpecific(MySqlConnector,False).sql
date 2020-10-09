BeforeExecute
-- MySqlConnector MySql

SET GLOBAL local_infile=ON

BeforeExecute
INSERT BULK `AllTypesNoYear`(bigintDataType, smallintDataType, tinyintDataType, mediumintDataType, intDataType, numericDataType, decimalDataType, doubleDataType, floatDataType, dateDataType, datetimeDataType, timestampDataType, timeDataType, charDataType, varcharDataType, textDataType, binaryDataType, varbinaryDataType, blobDataType, bitDataType, enumDataType, setDataType, intUnsignedDataType

BeforeExecute
INSERT BULK `AllTypesNoYear`(bigintDataType, smallintDataType, tinyintDataType, mediumintDataType, intDataType, numericDataType, decimalDataType, doubleDataType, floatDataType, dateDataType, datetimeDataType, timestampDataType, timeDataType, charDataType, varcharDataType, textDataType, binaryDataType, varbinaryDataType, blobDataType, bitDataType, enumDataType, setDataType, intUnsignedDataType

BeforeExecute
INSERT BULK `AllTypesNoYear`(bigintDataType, smallintDataType, tinyintDataType, mediumintDataType, intDataType, numericDataType, decimalDataType, doubleDataType, floatDataType, dateDataType, datetimeDataType, timestampDataType, timeDataType, charDataType, varcharDataType, textDataType, binaryDataType, varbinaryDataType, blobDataType, bitDataType, enumDataType, setDataType, intUnsignedDataType

BeforeExecute
-- MySqlConnector MySql

SELECT 
	Count(*)
FROM
	`AllTypesNoYear` `_`
WHERE
	`_`.`varcharDataType` = '_btest'

BeforeExecute
-- MySqlConnector MySql
DECLARE @take Int32
SET     @take = 10

SELECT 
	`_`.`ID`, 
	`_`.`bigintDataType`, 
	`_`.`smallintDataType`, 
	`_`.`tinyintDataType`, 
	`_`.`mediumintDataType`, 
	`_`.`intDataType`, 
	`_`.`numericDataType`, 
	`_`.`decimalDataType`, 
	`_`.`doubleDataType`, 
	`_`.`floatDataType`, 
	`_`.`dateDataType`, 
	`_`.`datetimeDataType`, 
	`_`.`timestampDataType`, 
	`_`.`timeDataType`, 
	`_`.`charDataType`, 
	`_`.`varcharDataType`, 
	`_`.`textDataType`, 
	`_`.`binaryDataType`, 
	`_`.`varbinaryDataType`, 
	`_`.`blobDataType`, 
	`_`.`bitDataType`, 
	`_`.`enumDataType`, 
	`_`.`setDataType`, 
	`_`.`intUnsignedDataType`
FROM
	`AllTypesNoYear` `_`
WHERE
	`_`.`varcharDataType` = '_btest'
ORDER BY
	`_`.`ID`
LIMIT @take

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`varcharDataType` = '_btest'

BeforeExecute
-- MySqlConnector MySql

DELETE `t1`
FROM
	`AllTypesNoYear` `t1`
WHERE
	`t1`.`varcharDataType` = '_btest'

