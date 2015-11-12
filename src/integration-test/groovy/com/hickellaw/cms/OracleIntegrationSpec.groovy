package com.hickellaw.cms


import grails.test.mixin.integration.Integration
import grails.transaction.*
import spock.lang.*
import groovy.sql.Sql

@Integration
@Rollback
class OracleIntegrationSpec extends Specification {
  static dataSource

  def setup() {
  }

  def cleanup() {
  }

  void "test dataSource"() {
    expect:"Oracle dataSource"
      assert dataSource != null
      def sql = Sql.newInstance(dataSource)

      def query = """SELECT banner
                       FROM v\$version
                     ;"""

      try {
        def row = sql.firstRow(query)
        assert row.banner.contains("Oracle Database 11g Enterprise Edition Release 11.2.0.1.0")
      } catch (Exception e) {}
  }
}
