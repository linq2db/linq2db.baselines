-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO "Issue681Table"@"xe"
(
	ID,
	"Value"
)
VALUES
(
	:ID,
	:Value
)

