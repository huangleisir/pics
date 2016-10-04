DROP TABLE IF EXISTS auth_user;
-- 创建用户表
CREATE TABLE auth_user (
  id BIGINT(20) AUTO_INCREMENT NOT NULL,
  name varchar(64) NOT NULL,
  pwd varchar(64) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--创建角色表
DROP TABLE IF EXISTS auth_role;
CREATE TABLE auth_role (
  id BIGINT(20) AUTO_INCREMENT NOT NULL,
  name varchar(64) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--创建功能表
DROP TABLE IF EXISTS auth_function;
CREATE TABLE auth_function (
  id BIGINT(20) AUTO_INCREMENT NOT NULL,
  name varchar(64) NOT NULL,
  parent_id BIGINT(20) NOT NULL,
  url varchar(128) NOT NULL,
  serial_num int NOT NULL,
  accordion int NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--创建角色功能表
DROP TABLE IF EXISTS auth_role_function;
CREATE TABLE auth_role_function (
  id BIGINT(20) AUTO_INCREMENT NOT NULL,
  role_id BIGINT(20) NOT NULL,
  function_id BIGINT(20) NOT NULL,
  status int NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--创建用户角色表
DROP TABLE IF EXISTS auth_user_role;
CREATE TABLE auth_user_role (
  id BIGINT(20) AUTO_INCREMENT NOT NULL,
  role_id BIGINT(20) NOT NULL,
  user_id BIGINT(20) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-------  为什么是这样的，首先是用户--->角色----->功能，那么这里就有三张独立的表，另外还要存储用户与角色的关联关系这是一张关联表，还有角色与功能的关联表。
