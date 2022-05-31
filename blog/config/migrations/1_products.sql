-- Write your migrate up statements here

CREATE TABLE products (
    id BIGSERIAL PRIMARY KEY,
    name          text,
    description   text,
    price         numeric(7,2),
    tags          text[],
    category_ids  bigint[] NOT NULL,
    user_id       bigint REFERENCES users(id),
    created_at    timestamp without time zone NOT NULL,
    updated_at    timestamp without time zone
);

-- Indices -------------------------------------------------------


---- create above / drop below ----

DROP TABLE products;

-- Write your migrate down statements here. If this migration is irreversible
-- Then delete the separator line above