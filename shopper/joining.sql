/*
  Reading Material:

    Just this one page:

      http://www.sql-join.com/

    If you like Venn Diagrams, and want to know what a left/right/full join is:

      http://www.sql-join.com/sql-join-types

  Everything below is discussing what is known as an INNER JOIN operation.
  Imagine a Venn Diagram (or, click on the second link above to SEE a Venn Diagram).
  The intersection of the tables is the result of INNER JOIN.

  Table info:

  purchase is a table with columns (id, shopper_id, item_id, quantity)
  shopper is a table with columns (id, name)
  item is a table with columns (id, type, source, price)

  we want to write a query that returns every item that each person has purchased
  each row should have
    1) the name of the shopper
    2) the type of the item
    3) the amount bought

  the purchase table has just the last one (quantity).

  We need to use the other columns on purchase (item_id, shopper_id) to
  reference data in the other tables. "joining" tables is the act of combining data from multiple tables.

  doing "SELECT * FROM purchase, item, shopper" returns every combination of
  rows from the three tables. So if the tables have 10, 100, and 20 entries,
  the result from the query above would have 10 * 100 * 20 rows.

  BUT- only the rows where purchase.item_id = item.id and purchase.shopper_id = shopper.id are interesting.
  This is that intersection between the two tables- the shared space in our Venn Diagram.

  We do an implicit join when we write our WHERE clause such that these conditions are met. Example:
*/

-- Implicit Join (JOIN keyword is not used)
SELECT shopper.name, item.type, purchase.quantity
FROM purchase, item, shopper
WHERE purchase.item_id = item.id
  AND purchase.shopper_id = shopper.id;

-- You can also use the JOIN keyword. Both of these queries return the same result.

-- Explicit Join (JOIN keyword is used)
SELECT shopper.name, item.type, purchase.quantity
FROM purchase
JOIN item ON purchase.item_id = item.id
JOIN shopper ON purchase.shopper_id = shopper.id;

-- Decide for yourself which format you prefer.
