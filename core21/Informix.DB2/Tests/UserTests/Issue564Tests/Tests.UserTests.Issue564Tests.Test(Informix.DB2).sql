BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Parent564
(
	Id          SERIAL         NOT NULL,
	"Type"      NVarChar(255)      NULL,
	StringValue NVarChar(20)       NULL,
	IntValue    Int                NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Type_1 VarChar(9) -- String
SET     @Type_1 = 'Child564A'
DECLARE @StringValue VarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO Parent564
(
	"Type",
	StringValue
)
VALUES
(
	@Type_1,
	@StringValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Type_1 VarChar(9) -- String
SET     @Type_1 = 'Child564B'
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 911

INSERT INTO Parent564
(
	"Type",
	IntValue
)
VALUES
(
	@Type_1,
	@IntValue
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Parent564

