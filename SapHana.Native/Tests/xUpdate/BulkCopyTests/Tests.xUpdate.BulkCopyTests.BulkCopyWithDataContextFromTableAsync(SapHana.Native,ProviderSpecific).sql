-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

INSERT BULK "SimpleBulkCopyTable"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 20

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:"Id"
)

INSERT BULK "SimpleBulkCopyTable"

