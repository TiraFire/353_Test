DROP TABLE IF EXISTS users;

CREATE TABLE users (

  user_id                        INT(50)      NOT NULL AUTO_INCREMENT,

  user_name                      VARCHAR(50)  NOT NULL,

  user_pass                      VARCHAR(255) NOT NULL, -- NOTE: Never store raw password. Must be one way crypto hashed first.

  user_email                     VARCHAR(255) NOT NULL,

  user_date                      DATETIME     NOT NULL,

  user_birthDate                 DATE         NOT NULL,

  user_gender                    CHAR(1)      NOT NULL,

  user_level                     INT(16),

  user_karma_score               INT(32)               DEFAULT 0, -- Reddit-like point system

  user_type                      INT(3),

  user_answers_count             INT(16), -- keep track of the user's contribution

  user_questions_count           INT(16),

  user_profile_description_short VARCHAR(300),

  user_profile_description_long  VARCHAR(2000),

  UNIQUE INDEX user_name_unique (user_name),

  PRIMARY KEY (user_id)

)

  ENGINE = INNODB;