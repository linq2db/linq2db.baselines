-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "InventoryResource"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Raw(16) -- Binary
SET     @Id = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @Status Varchar2(4) -- String
SET     @Status = 'Used'

INSERT INTO "InventoryResource"
(
	"Id",
	"Status"
)
VALUES
(
	:Id,
	:Status
)

