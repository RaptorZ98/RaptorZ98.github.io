-- PAIN

use testeo;
Set @Id = 1;

-- """ Main Classes """

Insert Into website_person_type (name) values (CONCAT('Person - ', CAST(@Id AS CHAR)));
Insert Into website_person_id (type_id) values (@Id);
Insert Into website_client_number (client_number, person_id) values (@Id, @Id);

-- """ PF """

Insert Into website_profession (name, initials) values (CONCAT('NameProf - ', CAST(@Id AS CHAR)), CONCAT('Initials - ', CAST(@Id AS CHAR)));
Insert Into website_pf (person_id, first_name, second_name, first_lastname, second_lastname, ci, profession_id, birth_date, ci_expiration_date, comment) values (
    @Id, CONCAT('First Name - ', CAST(@Id AS CHAR)), CONCAT('Second Name - ', CAST(@Id AS CHAR)), CONCAT('First Lastname - ', CAST(@Id AS CHAR)),
    CONCAT('Second Lastname - ', CAST(@Id AS CHAR)), @Id, @Id, '1998-11-10', '1998-10-10', CONCAT('Comment - ', CAST(@Id AS CHAR))
);

-- """ PJ """

Insert Into website_personality (name) values (CONCAT('NamePers', CAST(@Id AS CHAR)));
Insert Into website_pj (person_id, name, personality_id) values (@Id, CONCAT('NamePj', CAST(@Id AS CHAR)), @Id);
Insert Into website_contribution_type (contribution_type_number, name) values (@Id, CONCAT('NameCON', CAST(@Id AS CHAR)));
Insert Into website_mtss_group (number, name) values (@Id, CONCAT('NameMts', CAST(@Id AS CHAR)));
Insert Into webiste_mtss_subgroup (number, name) values (@Id, CONCAT('NameSubMts', CAST(@Id AS CHAR)));
Insert Into website_bps_expiration_type (name) values (CONCAT('NameBps', CAST(@Id AS CHAR)));
Insert Into website_dgi_expiration_type (name) values (CONCAT('NameDgi', CAST(@Id AS CHAR)));
Insert Into website_pj_data (person_id, rut_number, bps_number, imm_number, bse_number, dgi_beginning_date, bps_beginning_date, dgi_certificate,
bps_certificate, bse_certificate, contribution_type_id, mtss_subgroup_id_id, bps_expiration_type_id, dgi_expiration_type_id, giro, comment) values (
    @Id, 100 + @Id, 200 + @Id, 300 + @Id, 400 + @Id, '2000-11-10', '2001-11-10',
    '2002-11-10', '2003-11-10', '2004-11-10', @Id, @Id, @Id, @Id,
    CONCAT('Giro - ', CAST(@Id AS CHAR)), CONCAT('Comment - ', CAST(@Id AS CHAR))
);

-- """ Persons related tables """

Insert Into website_associated_to (pf_id, pj_id) values (@Id, @Id);
Insert Into website_cash_in_date (cash_in_date) values ('2010-11-10');
Insert Into website_fee (fee) values (@Id);
Insert Into website_cash_in_related (person_id, cash_in_date_id) values (@Id, @Id);
Insert Into website_fee_related (person, fee_id) values (@Id, @Id);
Insert Into website_dgi_agreement (person_id, fee, amount_of_dues, day) values (@Id, @Id, @Id, @Id);
Insert Into website_bps_agreement (person_id, fee, amount_of_dues, day) values (@Id, @Id, @Id, @Id);
Insert Into website_conta (person_id, name, fee) values (@Id, CONCAT('NameConta - ', CAST(@Id AS CHAR)), @Id);

-- """ Directions & Contact """

Insert Into website_country_departments (name) values (CONCAT('NameCountryDep - ', CAST(@Id AS CHAR)));
Insert Into website_cp (cp) values (CONCAT('CP - ', CAST(@Id AS CHAR)));
Insert Into website_address_content (cd_id_id, cp_id_id, localidad, c_add, f_add, p_add, police_sectional, judicial_sectional, comment) values (
    @Id, @Id, CONCAT('Localidad - ', CAST(@Id AS CHAR)), CONCAT('C-add - ', CAST(@Id AS CHAR)), CONCAT('F-add - ', CAST(@Id AS CHAR)),
    CONCAT('P-add - ', CAST(@Id AS CHAR)), @Id, CONCAT('jud - ', CAST(@Id AS CHAR)), CONCAT('Comment - ', CAST(@Id AS CHAR))
);
Insert Into website_dir_type (name) values (CONCAT('NameDir - ', CAST(@Id AS CHAR)));
Insert Into website_email (email) values (CONCAT('Mail - ', CAST(@Id AS CHAR)));
Insert Into website_number_type (name) values (CONCAT('NameNum - ', CAST(@Id AS CHAR)));
Insert Into website_number_category (name) values (CONCAT('NameCat - ', CAST(@Id AS CHAR)));
Insert Into website_number (number_type_id, number_category_id, number) values (@Id, @Id, @Id);

-- """ Directions & Contact related tables """

Insert Into website_address (person_id, dir_type_id, address_content_id) values (@Id, @Id, @Id);
Insert Into website_pj_contact_email (address_content_id, email_id) values (@Id, @Id);
Insert Into website_pj_contact_number (address_content_id, number_id) values (@Id, @Id);
Insert Into website_pf_contact_email (address_content_id, email_id) values (@Id, @Id);
Insert Into website_pf_contact_number (person_id, number_id) values (@Id, @Id);

-- """ Transacts """

Insert Into website_predefined_concepts (text) values (CONCAT('Text - ', CAST(@Id AS CHAR)));
Insert Into website_period_type (name, first_period, second_period) values (CONCAT('NamePer - ', CAST(@Id AS CHAR)), @Id, @Id);
Insert Into website_organization (name) values (CONCAT('NameOrg - ', CAST(@Id AS CHAR)));
Insert Into website_org_departments (organization_id, name) values (@Id, CONCAT('NameODep - ', CAST(@Id AS CHAR)));
Insert Into website_transact_type (name) values (CONCAT('NameTran - ', CAST(@Id AS CHAR)));
Insert Into website_transact (person_id, org_departments_id, transact_type_id, to_do_date, description, comment, by_who, completed) values (
    @Id, @Id, @Id, '1990-11-10', CONCAT('Description - ', CAST(@Id AS CHAR)), CONCAT('Comment - ', CAST(@Id AS CHAR)),
    CONCAT('Per - ', CAST(@Id AS CHAR)), @Id - 1
);

-- """ Recaudacion """

Insert Into website_dgi_value (name, fee) values (CONCAT('NameDgiVa - ', CAST(@Id AS CHAR)), @Id);
Insert Into website_bps_value (name, fee) values (CONCAT('NameBpsVa - ', CAST(@Id AS CHAR)), @Id);
Insert Into website_ca_date (month, year) values (2, 2000 + @Id);
Insert Into website_ca_concept (name) values (CONCAT('NameCon - ', CAST(@Id AS CHAR)));
Insert Into website_ca_subconcept (ca_concept_id, name) values (@Id, CONCAT('NameSubCon - ', CAST(@Id AS CHAR)));
Insert Into website_current_account (person_id, ca_date_id, ca_subconcept_id, to_charge, charged, paid, ticket) values (
    @Id, @Id, @Id, @Id, @Id, @Id, @Id
);

-- """ Recaudacion related tables """

Insert Into website_bps_expiration_date (bps_expiration_type_id, month, day, digit) values (@Id, 2, @Id, @Id);
Insert Into website_dgi_expiration_date (dgi_expiration_type_id, month, day) values (@Id, 2, @Id);

-- """ Parameters """

Insert Into website_working_date (month, year) values (2, 1990 + @Id);
Insert Into website_pwd_table (pwd) values (@Id);
