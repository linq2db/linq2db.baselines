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

DROP TABLE AllTypeCreateTest

