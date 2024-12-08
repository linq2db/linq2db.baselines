(168935) SELECT 
	t168935.Id = t168934.Id
FROM [DctSetpointtype(168934)] as t168934 (spt)
		LEFT JOIN (
			(168972) SELECT 
				t168972.SetpointtypeId        = t168967.SetpointtypeId,
				t168972.Permission            = t168942.Permission?,
				t168972.Inheritablepermission = t168947.Inheritablepermission?
			FROM [VWellTree(168937)] as t168937 (t2)
					INNER JOIN [DctOu(168939)] as t168939 (tp2) ON ({t168937.ShopId?}? = {t168939.Id})
					LEFT JOIN [UacUsersDatagroup(168942)] as t168942 (cudg) ON ({t168939.Id} = {t168942.DatagroupId} AND {t168942.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168947)] as t168947 (oudg) ON ({t168939.ParentId?}? = {t168947.DatagroupId} AND {t168947.UserId} = 150 AND {t168947.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168967)] as t168967 (d) ON ({t168937.WellId?}? = {t168967.WellId})
		) as t168972 (t1) ON ({t168972.SetpointtypeId?} = {t168934.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168972.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168972.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
