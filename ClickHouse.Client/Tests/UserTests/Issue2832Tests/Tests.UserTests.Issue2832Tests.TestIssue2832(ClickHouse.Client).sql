(170483) SELECT 
	t170483.Id = t170482.Id
FROM [DctSetpointtype(170482)] as t170482 (spt)
		LEFT JOIN (
			(170520) SELECT 
				t170520.SetpointtypeId        = t170515.SetpointtypeId,
				t170520.Permission            = t170490.Permission?,
				t170520.Inheritablepermission = t170495.Inheritablepermission?
			FROM [VWellTree(170485)] as t170485 (t2)
					INNER JOIN [DctOu(170487)] as t170487 (tp2) ON ({t170485.ShopId?}? = {t170487.Id})
					LEFT JOIN [UacUsersDatagroup(170490)] as t170490 (cudg) ON ({t170487.Id} = {t170490.DatagroupId} AND {t170490.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(170495)] as t170495 (oudg) ON ({t170487.ParentId?}? = {t170495.DatagroupId} AND {t170495.UserId} = 150 AND {t170495.Inheritablepermission} > 0)
					INNER JOIN [Deviation(170515)] as t170515 (d) ON ({t170485.WellId?}? = {t170515.WellId})
		) as t170520 (t1) ON ({t170520.SetpointtypeId?} = {t170482.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t170520.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t170520.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
