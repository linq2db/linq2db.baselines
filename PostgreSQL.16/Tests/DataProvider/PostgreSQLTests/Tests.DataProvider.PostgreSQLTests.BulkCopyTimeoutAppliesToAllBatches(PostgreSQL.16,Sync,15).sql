-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
CREATE FUNCTION pg_temp.bulkcopy_timeout_slow() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN PERFORM pg_sleep(1.5); RETURN NULL; END $$

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
CREATE TRIGGER bulkcopy_timeout_slow_trg AFTER INSERT ON "BulkCopyTimeoutTable" FOR EACH STATEMENT EXECUTE PROCEDURE pg_temp.bulkcopy_timeout_slow()

INSERT BULK "BulkCopyTimeoutTable"(Id, Value)

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"BulkCopyTimeoutTable" t1

