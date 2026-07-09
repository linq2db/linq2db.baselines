-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @Value Text(8) -- String
SET     @Value = 'SeqValue'

INSERT INTO "SequenceTest1"
(
	"ID",
	"Value"
)
VALUES
(
	nextval('sequencetestseq'),
	:Value
)

