-- ===================================================================
-- Copyright (C) 2011-2014 Alexandre Spangaro <alexandre.spangaro@gmail.com>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.
--
-- ===================================================================

create table llx_payment_salary
(
  rowid           integer AUTO_INCREMENT PRIMARY KEY,
  tms             timestamp,
  fk_user         integer NOT NULL,
  datep           date,                       -- date de paiement
  datev           date,                       -- date de valeur
  amount          real NOT NULL DEFAULT 0,
  label           varchar(255),
  datesp          date,                       -- date de début de la période
  dateep          date,                       -- date de fin de la période    
  entity          integer DEFAULT 1 NOT NULL,	-- multi company id
  note            text,
  fk_bank         integer,  
  fk_user_creat   integer,                    -- utilisateur qui a cree l'info
  fk_user_modif   integer                     -- utilisateur qui a modifié l'info
)ENGINE=innodb;