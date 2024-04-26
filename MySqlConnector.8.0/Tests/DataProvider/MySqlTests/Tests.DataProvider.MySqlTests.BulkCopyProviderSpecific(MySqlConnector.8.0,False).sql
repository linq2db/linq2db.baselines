﻿BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SET GLOBAL local_infile=ON

BeforeExecute
INSERT BULK `AllTypesNoYear`(bigintDataType, smallintDataType, tinyintDataType, mediumintDataType, intDataType, numericDataType, decimalDataType, doubleDataType, floatDataType, dateDataType, datetimeDataType, timestampDataType, timeDataType, charDataType, varcharDataType, textDataType, binaryDataType, varbinaryDataType, blobDataType, bitDataType, enumDataType, setDataType, intUnsignedDataType

BeforeExecute
INSERT BULK `AllTypesNoYear`(bigintDataType, smallintDataType, tinyintDataType, mediumintDataType, intDataType, numericDataType, decimalDataType, doubleDataType, floatDataType, dateDataType, datetimeDataType, timestampDataType, timeDataType, charDataType, varcharDataType, textDataType, binaryDataType, varbinaryDataType, blobDataType, bitDataType, enumDataType, setDataType, intUnsignedDataType

BeforeExecute
INSERT BULK `AllTypesNoYear`(bigintDataType, smallintDataType, tinyintDataType, mediumintDataType, intDataType, numericDataType, decimalDataType, doubleDataType, floatDataType, dateDataType, datetimeDataType, timestampDataType, timeDataType, charDataType, varcharDataType, textDataType, binaryDataType, varbinaryDataType, blobDataType, bitDataType, enumDataType, setDataType, intUnsignedDataType

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`AllTypesNoYear` `t1`
WHERE
	`t1`.`varcharDataType` = '_btest'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
	`t1`.`varcharDataType` = '_btest'
ORDER BY
	`t1`.`ID`
LIMIT @take

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `t1`
FROM
	`AllTypes` `t1`
WHERE
	`t1`.`varcharDataType` = '_btest'

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DELETE   `t1`
FROM
	`AllTypesNoYear` `t1`
WHERE
	`t1`.`varcharDataType` = '_btest'

