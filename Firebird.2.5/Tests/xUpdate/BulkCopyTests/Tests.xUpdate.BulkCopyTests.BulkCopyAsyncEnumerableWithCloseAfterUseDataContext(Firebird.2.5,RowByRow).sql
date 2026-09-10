-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	@Id
)

