import 'package:bithub/SubjectProfile.dart';
import 'package:bithub/syllabus_card.dart';
import 'package:bithub/topbg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import './main.dart';
import 'package:page_transition/page_transition.dart';

class acad_resource extends StatelessWidget {
  acad_resource({super.key});

  List<SubjectProfile> material = [
    SubjectProfile(name: 'Numerical Methods', m1: [
      'Module 1',
      'Error Analysis: Definition and sources of errors, propagation of errors, floating-point arithmetic Solution of Nonlinear equations: Bisection method, Regula-Falsi method, Secant method,Newton-Raphson method and its variants, General Iterative method.'
    ], m2: [
      'Module 2',
      'Gauss-Elimination, Gauss-Jordan, LU-Decomposition, Gauss-Jacobi and Gauss- Siedel methods to solve linear system of equations and Power method to find least and largest eigenvalues.'
    ], m3: [
      'Module 3',
      'Lagrange’s interpolation, Newton’s divided differences interpolation formulas, inverse interpolation, interpolating polynomial using finite differences. '
    ], m4: [
      'Module 4',
      'Differentiation using interpolation formulas, Integration using Newton-Cotes formulas: Trapezoidal rule, Simpson\’s rule'
    ], m5: [
      'Module 5',
      'Euler\’s method, modified Euler\’s method, Runge - Kutta Methods of second and fourth order to solve initial value problems.'
    ]),
    SubjectProfile(name: 'Database Management System', m1: [
      'Module 1',
      'Purpose of Database System; View of Data, Database Languages, Transaction Management,Database architecture, Database Users and Administrator, Types of database System, Overview of design process, E-R model, Constraints, E\–R Diagram, E-R Diagram issues, Weak Entity Sets, Extended E – R Features, Reduction to E–R Schemas'
    ], m2: [
      'Module 2',
      'Structure of Relational Database, Codd\'s Rules Fundamental Relational Algebra Operations,Additional Relational Algebra Operations, Extended Relational Algebra Operations, Data definition, Basic structure of SQL queries, Set Operations, Aggregate Functions, Null Values, Nested Sub Queries, complex queries, views, modification of database, Joined relations, SQL data types & schemas, Integrity constraints, authorization, Embedded SQL, Triggers. '
    ], m3: [
      'Module 3',
      'Functional dependency, Decomposition, Normalization, First normal form, Second normal form, Third normal form, BCNF, Multivalued dependencies and Fourth normal form, Join dependencies and Fifth normal form, DKNF. '
    ], m4: [
      'Module 4',
      'Ordered Indices, B+ Tree index files, B-Tree index files, Multiple key access Static hashing,Dynamic Hashing, Comparison of ordered indexing and hashing, Index definition in SQL.Query Processing Measure of Query Cost, Selection Operation, Evaluation of Expressions. '
    ], m5: [
      'Module 5',
      'Transaction Concepts & ACID Properties, Transaction States, Implementation of Atomicity & Durability, Concurrent Executions, Serializability& Its Testing, Recoverability, Lock-Based protocols, Validation based protocol, Multiple Granularity, Multiversion Schemes, Deadlock Handling. '
    ]),
    SubjectProfile(name: 'Operating System', m1: [
      'Module 1',
      'Operating system Objective and Functions, Evolution of Operating System, Major Advances in OS Components, Characteristics of Modern Operating Systems Process Description and Control Process Concept, Process States, Process Description, Process Control, Threads, Types of Threads, Multicore and Multithreading '
    ], m2: [
      'Module 2',
      'Type of scheduling, Uniprocessor Scheduling, Multiprocessor Scheduling'
    ], m3: [
      'Module 3',
      'Mutual Exclusion and Synchronization : Principle of Concurrency, Mutual Exclusion, Hardware Support, Semaphores, Monitors,Message Passing, Readers/Writers Problem. Deadlock and Starvation : Principle of Deadlock, Deadlock Prevention, Deadlock Avoidance, Deadlock Detection, Dining Philosopher Problem'
    ], m4: [
      'Module 4',
      'Memory Management Requirements, Memory Partitioning, Paging, Segmentation Hardware and Control Structures, Operating System Policies for Virtual Memory'
    ], m5: [
      'Module 5',
      'I/O device, Organization of the I/O Function, Operating System Design Issues, I/O Buffering, Disk Scheduling, RAID, Disk Cache .File Management: Overview, File Organization and Access, File Directories, File Sharing, Record Blocking, File Allocation and Free Space Management'
    ]),
    SubjectProfile(name: 'Algorithms', m1: [
      "Module 1",
      "Introduction, Algorithm Complexity and various cases using Insertion Sort, Asymptotic Notations, Time complexity of Recursive Algorithm, Solving Recurrences using Iterative, Recursion Tree and Master Theorem. "
    ], m2: [
      "Module 2",
      "Discussion of basic approach using Binary Search, Merge Sort, Quick Sort, Selection in Expected linear time, Maximum Subarray, Matrix Multiplication, Introduction of Transform and Conquer and AVL Tree."
    ], m3: [
      "Module 3",
      "Introduction and Approach, Rod Cutting, LCS, Optimal BST, Transitive closure and All-pair Shortest Path, Travelling Salesperson Problem."
    ], m4: [
      "Module 4",
      "Introduction to greedy using fractional knapsack, Huffman Code, Minimum Spanning Tree – Prim and Kruskal, Single Source Shortest Path Dijkstra’s and Bellman-Ford, Introduction to Backtracking using N-Queens problem, Introduction to Branch and Bound using Assignment Problem or TSP."
    ], m5: [
      "Module 5",
      "Non-deterministic algorithms – searching and sorting, Class P and NP, Decision and Optimization problem, Reduction and NPC and NPH, NP Completeness proof for: SAT, MaxClique, Vertex Cover, Introduction to Randomized Algorithms, Introduction to Approximation Algorithms"
    ]),
    SubjectProfile(name: 'Understanding Harmony', m1: [
      "Module 1",
      "1. Purpose and motivation for the course, recapitulation from Universal Human Values-I. 2. SelfExploration–what is it? - Its content and process; ‘Natural Acceptance’ and Experiential Validation- as the process for self-exploration. 3. Continuous Happiness and Prosperity- A look at basic Human Aspirations. 4. Right understanding, Relationship and Physical Facility- the basic requirements for fulfilment of aspirations of every human being with their correct priority. 5. Understanding Happiness and Prosperity correctly- A critical appraisal of the current scenario 6. Method to fulfil the above human aspirations: understanding and living in harmony at various levels. Include practice sessions to discuss natural acceptance in human being as the innate acceptance for living with responsibility (living in relationship, harmony and co-existence) rather than as arbitrariness in choice based on liking-disliking. "
    ], m2: [
      "Module 2",
      "1. Understanding human being as a co-existence of the sentient ‘I’ and the material ‘Body’. 2. Understanding the needs of Self (‘I’) and ‘Body’ - happiness and physical facility. 3. Understanding the Body as an instrument of ‘I’ (I being the doer, seer and enjoyer). 4. Understanding the characteristics and activities of ‘I’ and harmony in ‘I’. 5. Understanding the harmony of I with the Body: Sanyam and Health; correct appraisal of Physical needs, meaning of Prosperity in detail. 6. Programs to ensure Sanyam and Health. Include practice sessions to discuss the role others have played in making material goods available tome. Identifying from one’s own life. Differentiate between prosperity and accumulation. Discuss program for ensuring health vs dealing with disease. "
    ], m3: [
      "Module 3",
      "1. Understanding values in human-human relationship; meaning of Justice (nine universal values in relationships) and program for its fulfilment to ensure mutual happiness; Trust and Respect as the foundational values of relationship 2. Understanding the meaning of Trust; Difference between intention and competence 3. Understanding the meaning of Respect, Difference between respect and differentiation; the other salient values in relationship 4. Understanding the harmony in the society (society being an extension of family): Resolution, Prosperity, fearlessness (trust) and co-existence as comprehensive Human Goals 5. Visualizing a universal harmonious order in society- Undivided Society, Universal Order- from family to world family. Include practice sessions to reflect on relationships in family, hostel and institute as extended family, real life examples, teacher-student relationship, goal of education etc. Gratitude as a universal value in relationships. Discuss with scenarios. Elicit examples from students’ lives. "
    ], m4: [
      'Module 4',
      '1. Understanding the harmony in the Nature 2. Interconnectedness and mutual fulfilment among the four orders of nature- recyclability and self-regulation in nature. 3. Understanding Existence as Co-existence of mutually interacting units in all- pervasive space. 4. Holistic perception of harmony at all levels of existence. 5. Include practice sessions to discuss human being as cause of imbalance in nature (film \“Home\” can be used), pollution, depletion of resources and role of technology etc'
    ], m5: [
      'Module 5',
      '1. Natural acceptance of human values 2. Definitiveness of Ethical Human Conduct 3. Basis for Humanistic Education, Humanistic Constitution and Humanistic Universal Order 4. Competence in professional ethics: a. Ability to utilize the professional competence for augmenting universal human order b. Ability to identify the scope and characteristics of people friendly and ecofriendly production systems, c. Ability to identify and develop appropriate technologies and management patterns for above production systems. 5. Case studies of typical holistic technologies, management models and production systems 6. Strategy for transition from the present state to Universal Human Order: a) At the level of individual: as socially and ecologically responsible engineers, technologists and managers b) At the level of society: as mutually enriching institutions and organizations 7. Sum up. Include practice Exercises and Case Studies will be take'
    ]),
    SubjectProfile(name: 'Engineering Economy', m1: [
      "Module 1",
      "Introduction to engineering economy, Time value of money, Interest rate and rate of return, Cash flows, Economic equivalence, Simple and compound interest, Minimum attractive rate of return, Single cash flow, Uniform series of cash flow, Arithmetic gradient and geometric gradient series, Multiple compounding periods in a year, Continuous compounding, Bonds"
    ], m2: [
      "Module 2",
      "Formulating alternatives, Bases of comparison- present worth amount, annual equivalent amount, future worth amount, rate of return, Defining mutually exclusive alternatives, Decision criteria for selection of investment proposals, Comparison of alternatives with unequal service life, Sensitivity analysis"
    ], m3: [
      "Module 3",
      "Reasons for replacement, Economic service life, Evaluation of replacement involving excessive maintenance cost, decline in efficiency, inadequacy and obsolescence; Methods of depreciation and their comparison, Decision making based on expected value decision tree in the evaluation of alternatives"
    ], m4: [
      "Module 4",
      "Cost - implicit and explicit costs, Cost structure - fixed and variable, direct and indirect, product and period, marginal and average, sunk and opportunity, recurring and non-recurring, short-run and long-run, incremental, cash and book, life-cycle cost, Elements of cost – material, labor, overhead expenses, Selling Price, Allocation of cost, Components of cost – prime cost, office cost, total cost, Methods of allocation of overhead expenses, Standard cost"
    ], m5: [
      "Module 5",
      "Concept of contribution, p/v ratio and break-even point, Concept of margin of safety, Cost-volume-profit relationship, Break‐even analysis and the financial decision‐making, Break-even chart, Effect of different variables on break-even point, Cost comparison of two or three alternatives."
    ]),
    SubjectProfile(name: 'Project Management', m1: [
      "Module 1",
      "Definition and types of project, Turnkey projects, Scope of project and creep, Project life cycle, Project constraints"
    ], m2: [
      "Module 2",
      "Organizational structures for projects, Responsibilities of project manager, Project risk analysis, Project appraisal (Technical, economic, financial, management)"
    ], m3: [
      "Module 3",
      "Environmental considerations in project evaluation, Primary issues and secondary issues in Feasibility study, Social cost benefit analysis"
    ], m4: [
      "Module 4",
      "Network modeling of a project, Activity on Arc (AOA) verses Activity on Node (AON), Forward and backward pass computation, Critical paths, floats and slack"
    ], m5: [
      "Module 5",
      "Project Scheduling Techniques, PERT, CPM Models, Time-Cost Trade-off in a project, Project Monitoring Techniques,"
    ]),
    SubjectProfile(name: 'German', m1: [
      'Module 1',
      "Sich begrüssen, sich vorstellen, sich verabschieden und Woher kommen Sie?",
      "Ländernamen, Nationalitätsbezeichnung, Das Verb: Präsens – ( sein, heissen), Personalpronomen: ich und Sie, Verb + Adjektiv, Das Nomen: Singular und Plural, Zahlen von 1 – 10. Antworten mit Ja / Nein"
    ], m2: [
      'Module 2',
      "Das Alphabet, buchstabieren, Das Verb: haben, schliessen, machen, Fragepronomen, Zahlen von 0- 1,000,000, Personalpronomen, Das Demonstrativpronomen „DAA“, Unterschied zwischen Uhr – Stunde, Negativartikel, Der Artikel: bestimmter und unbestimmter Artikel."
    ], m3: [
      'Module 3',
      "Reisende im Gespräch, Das Verb: Präsens - (fahren, lesen, nehmen usw.), Vorsilbe und Verb (trennbare Verben), Wortstellung von trennbaren Verben, Präpositionen, Tage – Monate. Erklärung von drei sie/Sie, Der Akkusativ, „es gibt/gibt es“."
    ], m4: [
      'Module 4',
      "Ein Freunde besucht, Das Nomen: Akkusativ-und Dativergänzungen, Das Fragepronomen: Wem?, PossessivPronomen, Präpositionen mit dem Dativ und mit dem Akkusativ, Das Zeitadverb.",
      "Geburtstag feiern, Telefongespräch, Die Uhrzeiten, Modalverben, Das Personalpronomen bei Akkusativ- und Dativergänzungen."
    ], m5: [
      'Module 5',
      "Die Wohnung beschreiben, Ein Zimmer vermieten, Richtungsangaben, Das Demonstrativpronomen: dies, wohen? – wo? – wohin? Präpostionen mit dem Akkusativ oder Dativ, Jahreszahlen, Konjugation von möchten, Der Genetiv, Das Präteritum: sein und haben, Reflexivpronomen, Das Perfekt."
    ]),
    SubjectProfile(name: 'French', m1: [
      'Module 1',
      'Langue Française, Le pronom personnel, Articles définis et indéfinis, Verbes au présent, Se présenter et présenter quelqu’un (salutations formelles et informelles), Nationalités, professions, nombres, Négation, Demander et donner des infos personnelles'
    ], m2: [
      'Module 2',
      'Articles partitifs, expression de la quantité, Les chiffres, Formule de politesse, les heures, les jours de la semaine, les mois de l’année, Adjectifs démonstratifs.'
    ], m3: [
      'Module 3',
      'Trois formes d’interrogation, Utilisation de « est-ce que ? » et « qu’est-ce que c’est ? » quel, quelle etc. L\'impératif, Adjectifs qualificatifs (mas/fém., pluriel etc.) et possessifs'
    ], m4: [
      'Module 4',
      'Parler de goûts et des préférences et leurs degrés, Le présent, futur proche, passé récent, Décrire une personne ou un lieu.'
    ], m5: [
      'Module 5',
      'Le passe composé, le futur, l’imparfait. Parler de ses activités quotidiennes, Décrire la ville, des amis, des parents etc.'
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wt = MediaQuery.of(context).size.width;

    return Material(
      child: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              topbg(),
              SizedBox(
                height: ht * 0.03,
              ),
              for (var sub in material)
                Card(
                  color: Colors.blue[50],
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: syllabus_card(syllabus: [
                              sub.m1,
                              sub.m2,
                              sub.m3,
                              sub.m4,
                              sub.m5
                            ]),
                            ctx: context),
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(
                          left: 0.01 * wt,
                          right: 0.01 * wt,
                          bottom: 0.01 * ht,
                          top: 0.01 * ht),
                      padding: EdgeInsets.all(0.01 * ht),
                      child: Text(
                        '${sub.name}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
