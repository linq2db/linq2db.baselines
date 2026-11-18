-- PostgreSQL.9.3 PostgreSQL
CREATE FUNCTION pg_temp.bulkcopy_timeout_slow() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN PERFORM pg_sleep(1.5); RETURN NULL; END $$

-- PostgreSQL.9.3 PostgreSQL
CREATE TRIGGER bulkcopy_timeout_slow_trg AFTER INSERT ON "BulkCopyTimeoutTable" FOR EACH STATEMENT EXECUTE PROCEDURE pg_temp.bulkcopy_timeout_slow()

INSERT BULK "BulkCopyTimeoutTable"(Id, Value)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"BulkCopyTimeoutTable" t1

