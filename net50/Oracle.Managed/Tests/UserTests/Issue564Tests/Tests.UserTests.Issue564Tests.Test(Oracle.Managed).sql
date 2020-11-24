BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Parent564"
(
	"Id"          Int           NOT NULL,
	"Type"        VarChar(255)      NULL,
	"StringValue" VarChar(20)       NULL,
	"IntValue"    Int               NULL,

	CONSTRAINT "PK_Parent564" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_Parent564"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_Parent564"
BEFORE INSERT ON "Parent564" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_Parent564".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Type_1 Varchar2(9) -- String
SET     @Type_1 = 'Child564A'
DECLARE @StringValue Varchar2(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO "Parent564"
(
	"Type",
	"StringValue"
)
VALUES
(
	:Type_1,
	:StringValue
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Type_1 Varchar2(9) -- String
SET     @Type_1 = 'Child564B'
DECLARE @IntValue Int32
SET     @IntValue = 911

INSERT INTO "Parent564"
(
	"Type",
	"IntValue"
)
VALUES
(
	:Type_1,
	:IntValue
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	"Parent564" t1

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Parent564"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Parent564"';
	EXECUTE IMMEDIATE 'DROP TABLE "Parent564"';
END;

