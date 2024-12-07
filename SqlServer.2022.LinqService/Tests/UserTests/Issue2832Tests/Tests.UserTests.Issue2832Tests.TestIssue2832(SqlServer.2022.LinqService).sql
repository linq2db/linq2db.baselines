(244753) SELECT 
	t244753.Id = t244752.Id
FROM [DctSetpointtype(244752)] as t244752 (spt)
		LEFT JOIN (
			[VWellTree(244755)] as t244755 (t2)
				INNER JOIN [DctOu(244757)] as t244757 (tp2) ON ({t244755.ShopId?}? = {t244757.Id})
				LEFT JOIN [UacUsersDatagroup(244760)] as t244760 (cudg) ON ({t244757.Id} = {t244760.DatagroupId} AND {t244760.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(244765)] as t244765 (oudg) ON ({t244757.ParentId?}? = {t244765.DatagroupId} AND {t244765.UserId} = 150 AND {t244765.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244785)] as t244785 (d) ON ({t244755.WellId?}? = {t244785.WellId})
		)  ON ({t244785.SetpointtypeId} = {t244752.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244760.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t244765.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
