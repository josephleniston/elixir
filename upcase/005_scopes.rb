management_tag_configuration_requirement_set = ConfigRequirementSet.where(name: "Management Tag Configuration").first

Easy::ReferenceData.refresh Scope, :type, "urn:lic:prop:product:category", tag_list: ["Tags", "Management"],
