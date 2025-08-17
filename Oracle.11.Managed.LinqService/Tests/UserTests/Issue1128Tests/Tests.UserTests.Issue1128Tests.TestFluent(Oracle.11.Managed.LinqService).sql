BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "AttributeBase"
(
	"Id"
)
VALUES
(
	:Id
)

