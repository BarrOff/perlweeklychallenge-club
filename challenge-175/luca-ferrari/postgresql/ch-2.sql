-- Perl Weekly Challenge 175
-- Task 2

CREATE SCHEMA IF NOT EXISTS pwc175;

CREATE OR REPLACE FUNCTION
pwc175.task2_plpgsql( l int DEFAULT 20)
RETURNS SETOF INT
AS $CODE$
BEGIN
        RETURN QUERY SELECT pwc175.task2_plperl( l );
END
$CODE$
LANGUAGE plpgsql;
