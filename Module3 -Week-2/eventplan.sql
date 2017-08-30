SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE EventPlan;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE EventPlan (
  planNo   CHAR(8)  NOT NULL,
  evntNo   CHAR(8)  NOT NULL,
  empNo    CHAR(8),
  workDate DATE     NOT NULL,
  notes    TEXT,
  activity CHAR(10) NOT NULL,
  CONSTRAINT PK_EventPlan PRIMARY KEY (planNo),
  CONSTRAINT FK_EventRequest FOREIGN KEY (evntNo) REFERENCES EventRequest (evntNo),
  CONSTRAINT FK_Employee FOREIGN KEY (empNo) REFERENCES Employee (empNo)
);
INSERT INTO EventPlan (planNo, evntNo, empNo, workDate, notes, activity)
VALUES ('P100', 'E100', 'E102', '2013-10-25', 'Standard operation', 'Operation');
#
INSERT INTO EventPlan (planNo, evntNo, empNo, workDate, notes, activity)
VALUES ('P101', 'E104', 'E100', '2013-12-03', 'Watch for gate crashers', 'Operation');
#
INSERT INTO EventPlan (planNo, evntNo, empNo, workDate, notes, activity)
VALUES ('P102', 'E105', 'E102', '2013-12-05', 'Standard operation', 'Operation');
#
INSERT INTO EventPlan (planNo, evntNo, empNo, workDate, notes, activity)
VALUES ('P103', 'E106', NULL, '2013-12-12', 'Watch for seat switching', 'Operation');
#
INSERT INTO EventPlan (planNo, evntNo, empNo, workDate, notes, activity)
VALUES ('P104', 'E101', 'E101', '2013-10-26', 'Standard cleanup', 'Cleanup');
#
INSERT INTO EventPlan (planNo, evntNo, empNo, workDate, notes, activity)
VALUES ('P105', 'E100', 'E101', '2013-10-25', 'Light cleanup', 'Cleanup');
#
INSERT INTO EventPlan (planNo, evntNo, empNo, workDate, notes, activity)
VALUES ('P199', 'E102', 'E101', '2013-12-10', 'Standard operation', 'Operation');
#
INSERT INTO EventPlan (planNo, evntNo, empNo, workDate, notes, activity)
VALUES ('P299', 'E101', 'E101', '2013-10-26', '', 'Operation');
#
INSERT INTO EventPlan (planNo, evntNo, empNo, workDate, notes, activity)
VALUES ('P349', 'E106', 'E101', '2013-12-12', '', 'Cleanup');
#
INSERT INTO EventPlan (planNo, evntNo, empNo, workDate, notes, activity)
VALUES ('P85', 'E100', 'E102', '2013-10-25', 'Standard operation', 'Setup');
#
INSERT INTO EventPlan (planNo, evntNo, empNo, workDate, notes, activity)
VALUES ('P95', 'E101', 'E102', '2013-10-26', 'Extra security', 'Setup');