-- PostgreSQL.9.2 PostgreSQL
CREATE FUNCTION pg_temp.bulkcopy_timeout_slow() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN PERFORM pg_sleep(1.5); RETURN NULL; END $$

-- PostgreSQL.9.2 PostgreSQL
CREATE TRIGGER bulkcopy_timeout_slow_trg AFTER INSERT ON "BulkCopyTimeoutTable" FOR EACH STATEMENT EXECUTE PROCEDURE pg_temp.bulkcopy_timeout_slow()

INSERT ASYNC BULK "BulkCopyTimeoutTable"(Id, Value)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	COUNT(*)
FROM
	"BulkCopyTimeoutTable" t1

