
(define (problem E3a)
    (:domain tasking)
    (:objects
        p1 p2 p3 p4 - programmer
        t1 t2 - task
    )
    (:init
        ;;Ability programmer
		(= (ability p1) 3)
		(= (ability p2) 4)
		(= (ability p3) 5)
		(= (ability p4) 1)

        ;;Quality programmer
		(= (quality p1) 5)
		(= (quality p2) 5)
		(= (quality p3) 1)
		(= (quality p4) 1)

        ;;Complexity tasks
		(= (complexity t1) 3)
		(= (complexity t2) 1)

        ;;Duration tasks
		(= (duration t1) 3)
		(= (duration t2) 1)

		;;TotalHours
		(= (totalHours) 0)

		;;NumTasks programmer
		(= (numTasks p1) 0)
		(= (numTasks p2) 0)
		(= (numTasks p3) 0)
		(= (numTasks p4) 0)

    )
    ;; The goal is:
    (:goal (and (forall (?t - task) (and (taskReviewAssigned ?t)(taskAssigned ?t))) (forall (?p - programmer) (<= (numTasks ?p) 2))) )
    (:metric minimize(totalHours))
)