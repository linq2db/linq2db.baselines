BeforeExecute
-- Informix.DB2 Informix

DROP TABLE AllTypeCreateTest

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE AllTypeCreateTest
(
	ID               Int                          NOT NULL,
	bigintDataType   BigInt                           NULL,
	int8DataType     BigInt                           NULL,
	intDataType      Int                              NULL,
	smallintDataType SmallInt                         NULL,
	decimalDataType  Decimal                          NULL,
	moneyDataType    Decimal                          NULL,
	realDataType     Real                             NULL,
	floatDataType    Float                            NULL,
	boolDataType     BOOLEAN                          NULL,
	charDataType     NChar(1)                         NULL,
	char20DataType   NVarChar(255)                    NULL,
	varcharDataType  NVarChar(255)                    NULL,
	ncharDataType    NVarChar(255)                    NULL,
	nvarcharDataType NVarChar(255)                    NULL,
	lvarcharDataType NVarChar(255)                    NULL,
	textDataType     NVarChar(255)                    NULL,
	dateDataType     datetime year to fraction        NULL,
	datetimeDataType datetime year to fraction        NULL,
	intervalDataType INTERVAL HOUR TO FRACTION(5)     NULL,
	byteDataType     BYTE                             NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1.bigintDataType,
	t1.int8DataType,
	t1.intDataType,
	t1.smallintDataType,
	t1.decimalDataType,
	t1.moneyDataType,
	t1.realDataType,
	t1.floatDataType,
	t1.boolDataType,
	t1.charDataType,
	t1.char20DataType,
	t1.varcharDataType,
	t1.ncharDataType,
	t1.nvarcharDataType,
	t1.lvarcharDataType,
	t1.textDataType,
	t1.dateDataType,
	t1.datetimeDataType,
	t1.intervalDataType,
	t1.byteDataType
FROM
	AllTypeCreateTest t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE AllTypeCreateTest

