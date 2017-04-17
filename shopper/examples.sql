SELECT * FROM shopper;
SELECT * FROM item;
SELECT * FROM purchase;

-- join on purchase.shopper_id and purchase.item_id
SELECT
  *
FROM
  shopper, item, purchase
WHERE
  shopper.id = purchase.shopper_id AND item.id = purchase.item_id;

-- specifiy the columns we want
SELECT
  shopper.name, item.type, purchase.quantity
FROM
  shopper, item, purchase
WHERE
  shopper.id = purchase.shopper_id AND item.id = purchase.item_id;
