CREATE TABLE product (
product_id text PRIMARY KEY,
product_ndc text,
product_type_name text,
proprietary_name text,
substance_name text,
non_proprietary_name text,
dosage_form text,
route text,
active_numerator_strength text,
active_ingredient_unit text,
pharm_class text,
dea_schedule text,
manufacturer text,
start_marketing_date text,
end_marketing_date text
);

CREATE TABLE package (
product_id text PRIMARY KEY,
product_ndc text,
ndc_package_code text,
package_description text,
sample_package text
);