CREATE table users
(
    id BIGSERIAL PRIMARY KEY,
    email varchar(100) UNIQUE NOT NULL,
    password varchar(100) NOT NULL,
    name varchar(100) NOT NULL,
    role varchar(20) NOT NULL DEFAULT 'ROLE_USER',
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE short_urls
(
    id           BIGSERIAL PRIMARY KEY,
    short_key    VARCHAR(10) NOT NULL UNIQUE,
    original_url TEXT        NOT NULL,
    is_private   BOOLEAN     NOT NULL DEFAULT FALSE,
    expires_at   TIMESTAMP,
    created_by   BIGINT REFERENCES users(id),
    click_count  BIGINT      NOT NULL DEFAULT 0,
    created_at   TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP
);