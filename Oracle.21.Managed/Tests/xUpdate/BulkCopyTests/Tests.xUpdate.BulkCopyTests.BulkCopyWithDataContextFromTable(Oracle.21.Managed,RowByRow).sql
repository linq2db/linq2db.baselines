BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (1)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "SimpleBulkCopyTable" ("Id") VALUES (2)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:Id
)

