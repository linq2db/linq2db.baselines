-- PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 42
DECLARE @Name Text(4) -- String
SET     @Name = 'seed'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt Timestamp -- DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy Text -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt Timestamp -- DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy Text -- String
SET     @UpdatedBy = NULL

INSERT INTO "UpsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt",
	"CreatedBy",
	"UpdatedAt",
	"UpdatedBy"
)
VALUES
(
	:Id,
	:Name,
	:Version,
	:CreatedAt,
	:CreatedBy,
	:UpdatedAt,
	:UpdatedBy
)

