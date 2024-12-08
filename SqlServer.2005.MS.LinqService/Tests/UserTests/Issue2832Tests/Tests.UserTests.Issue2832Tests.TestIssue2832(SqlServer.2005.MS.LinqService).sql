(218743) SELECT 
	t218743.Id = t218742.Id
FROM [DctSetpointtype(218742)] as t218742 (spt)
		LEFT JOIN (
			[VWellTree(218745)] as t218745 (t2)
				INNER JOIN [DctOu(218747)] as t218747 (tp2) ON ({t218745.ShopId?}? = {t218747.Id})
				LEFT JOIN [UacUsersDatagroup(218750)] as t218750 (cudg) ON ({t218747.Id} = {t218750.DatagroupId} AND {t218750.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(218755)] as t218755 (oudg) ON ({t218747.ParentId?}? = {t218755.DatagroupId} AND {t218755.UserId} = 150 AND {t218755.Inheritablepermission} > 0)
				INNER JOIN [Deviation(218775)] as t218775 (d) ON ({t218745.WellId?}? = {t218775.WellId})
		)  ON ({t218775.SetpointtypeId} = {t218742.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t218750.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t218755.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
