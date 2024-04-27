SELECT schools.name,per_pupil_expenditure,graduated FROM districts
JOIN expenditures ON districts.id=expenditures.district_id
JOIN schools ON schools.district_id = districts.id
JOIN graduation_rates ON schools.id = graduation_rates.school_id
ORDER BY per_pupil_expenditure DESC, schools.name;
