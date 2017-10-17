package com.umkc.db.flyway;

import org.flywaydb.core.Flyway;

/**
 * 
 * @author jm051781
 *
 */
public class FlywayMain {

	public static void main(String[] args) {

		// Create the Flyway instance
		Flyway flyway = new Flyway();

		// Point it to the database
		flyway.setDataSource(
				"jdbc:mysql://localhost:3306/Pokemon?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC",
				"root", "donut");

		// Start the migration
		flyway.migrate();
	}
}
