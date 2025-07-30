BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	sys_context('userenv','service_name')
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 5
DECLARE @Value Int32
SET     @Value = 10

INSERT INTO "Issue681Table"@XE
(
	ID,
	"Value"
)
VALUES
(
	:ID,
	:Value
)

