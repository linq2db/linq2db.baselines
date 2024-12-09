(168949) SELECT 
	t168949.Id = t168948.Id
FROM [DctSetpointtype(168948)] as t168948 (spt)
		LEFT JOIN (
			(168986) SELECT 
				t168986.SetpointtypeId        = t168981.SetpointtypeId,
				t168986.Permission            = t168956.Permission?,
				t168986.Inheritablepermission = t168961.Inheritablepermission?
			FROM [VWellTree(168951)] as t168951 (t2)
					INNER JOIN [DctOu(168953)] as t168953 (tp2) ON ({t168951.ShopId?}? = {t168953.Id})
					LEFT JOIN [UacUsersDatagroup(168956)] as t168956 (cudg) ON ({t168953.Id} = {t168956.DatagroupId} AND {t168956.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(168961)] as t168961 (oudg) ON ({t168953.ParentId?}? = {t168961.DatagroupId} AND {t168961.UserId} = 150 AND {t168961.Inheritablepermission} > 0)
					INNER JOIN [Deviation(168981)] as t168981 (d) ON ({t168951.WellId?}? = {t168981.WellId})
		) as t168986 (t1) ON ({t168986.SetpointtypeId?} = {t168948.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t168986.Permission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), CAST(t168986.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal128, "29", "10")), NULL)?}? IS NOT NULL)
