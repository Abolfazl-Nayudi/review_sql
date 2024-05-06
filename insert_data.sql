

-- create author data
insert into authors (author_id, author_name, biography) values (1, 'Aubrie', 'Unspecified blepharoconjunctivitis, bilateral');
insert into authors (author_id, author_name, biography) values (2, 'Gabbi', 'Subluxation of distal interphaln joint of r rng fngr, subs');
insert into authors (author_id, author_name, biography) values (3, 'Arney', 'Other specified injury of renal blood vessel');
insert into authors (author_id, author_name, biography) values (4, 'Eziechiele', 'Oth non-ABO incompat react d/t tranfs of bld/bld prod, sqla');
insert into authors (author_id, author_name, biography) values (5, 'Nataniel', 'Nondisp seg fx shaft of rad, unsp arm, 7thC');
insert into authors (author_id, author_name, biography) values (6, 'Doris', 'Acute myeloblastic leukemia, not having achieved remission');
insert into authors (author_id, author_name, biography) values (7, 'Madalyn', 'Injury of unsp nerve at hip and thigh level, unspecified leg');
insert into authors (author_id, author_name, biography) values (8, 'Celestine', 'Milt op w dest arcrft d/t acc deton onbrd munit, milt, subs');
insert into authors (author_id, author_name, biography) values (9, 'Tallie', 'Maternal care for damage to fetus from alcohol, fetus 4');
insert into authors (author_id, author_name, biography) values (10, 'Lorilee', 'Occup of special construction vehicle injured nontraf, init');
insert into authors (author_id, author_name, biography) values (11, 'Benjamen', 'Complication of respirator [ventilator]');
insert into authors (author_id, author_name, biography) values (12, 'Denice', 'Sltr-haris Type I physeal fx upper end of humerus, right arm');
insert into authors (author_id, author_name, biography) values (13, 'Gaelan', 'Other specified types of non-Hodgkin lymphoma');
insert into authors (author_id, author_name, biography) values (14, 'Katusha', 'Lacerat long flexor musc/fasc/tend l thm at wrs/hnd lv, subs');
insert into authors (author_id, author_name, biography) values (15, 'Willdon', 'Insect bite (nonvenomous), right knee, initial encounter');
insert into authors (author_id, author_name, biography) values (16, 'Pace', 'Disorder of external ear, unspecified, unspecified ear');
insert into authors (author_id, author_name, biography) values (17, 'Mamie', 'Nondisp longitud fx l patella, 7thE');
insert into authors (author_id, author_name, biography) values (18, 'Ulric', 'Unspecified transfusion reaction, subsequent encounter');
insert into authors (author_id, author_name, biography) values (19, 'Opal', 'Major laceration of left innominate or subclav vein, sequela');
insert into authors (author_id, author_name, biography) values (20, 'Carole', 'Central retinal artery occlusion, right eye');


-- creating books data
insert into books (book_id, title, price, author_id) values (1, 'Echo', 28.02, 9);
insert into books (book_id, title, price, author_id) values (2, 'Waves', 4.23, 10);
insert into books (book_id, title, price, author_id) values (3, 'Siren', 23.36, 9);
insert into books (book_id, title, price, author_id) values (4, 'Embers', 3.41, 9);
insert into books (book_id, title, price, author_id) values (5, 'Whisper', 34.85, 5);
insert into books (book_id, title, price, author_id) values (6, 'Blaze', 61.49, 3);
insert into books (book_id, title, price, author_id) values (7, 'Frost', 84.35, 8);
insert into books (book_id, title, price, author_id) values (8, 'Shadow', 47.42, 6);
insert into books (book_id, title, price, author_id) values (9, 'Ripple', 25.74, 3);
insert into books (book_id, title, price, author_id) values (10, 'Glimmer', 13.61, 8);
insert into books (book_id, title, price, author_id) values (11, 'Storm', 55.4, 8);
insert into books (book_id, title, price, author_id) values (12, 'Bloom', 93.77, 3);
insert into books (book_id, title, price, author_id) values (13, 'Drift', 32.87, 2);
insert into books (book_id, title, price, author_id) values (14, 'Quake', 78.77, 8);
insert into books (book_id, title, price, author_id) values (15, 'Dusk', 22.65, 4);
insert into books (book_id, title, price, author_id) values (16, 'Mist', 50.84, 9);
insert into books (book_id, title, price, author_id) values (17, 'Glow', 85.45, 5);
insert into books (book_id, title, price, author_id) values (18, 'Tide', 58.41, 10);
insert into books (book_id, title, price, author_id) values (19, 'Shiver', 13.7, 7);
insert into books (book_id, title, price, author_id) values (20, 'Chaos', 72.53, 10);


-- create reviews
insert into reviews (review_id, reviewer_name, review, book_id) values (1, 'Clarine', 'Nondisp fx of lateral condyle of l humer, 7thK', 7);
insert into reviews (review_id, reviewer_name, review, book_id) values (2, 'Lorry', 'Nondisp fx of greater trochanter of unsp femr, 7thD', 7);
insert into reviews (review_id, reviewer_name, review, book_id) values (3, 'Ulla', 'Sltr-haris Type II physl fx low end r femr, 7thD', 10);
insert into reviews (review_id, reviewer_name, review, book_id) values (4, 'Sandor', 'Complete traum amp at level betw knee and ankl, unsp low leg', 6);
insert into reviews (review_id, reviewer_name, review, book_id) values (5, 'Merrick', 'Genetic susceptibility to malignant neoplasm of prostate', 2);
insert into reviews (review_id, reviewer_name, review, book_id) values (6, 'Rockwell', 'Toxic effect of ethanol, accidental (unintentional), sequela', 1);
insert into reviews (review_id, reviewer_name, review, book_id) values (7, 'Bail', 'Disp fx of l radial styloid pro, subs for clos fx w nonunion', 9);
insert into reviews (review_id, reviewer_name, review, book_id) values (8, 'Gay', 'Acute dacryoadenitis, left lacrimal gland', 10);
insert into reviews (review_id, reviewer_name, review, book_id) values (9, 'Rubin', 'Jump/div into swim pool strk bottom causing oth injury, init', 4);
insert into reviews (review_id, reviewer_name, review, book_id) values (10, 'Markos', 'Nondisp suprcndl fx w/o intrcndl extn lower end l femr, init', 2);
insert into reviews (review_id, reviewer_name, review, book_id) values (11, 'Joscelin', 'Sltr-haris Type I physl fx upr end humer, unsp arm, 7thD', 9);
insert into reviews (review_id, reviewer_name, review, book_id) values (12, 'Fidelity', 'Direct infect of joint in infec/parastc dis classd elswhr', 9);
insert into reviews (review_id, reviewer_name, review, book_id) values (13, 'Godard', 'Unsp fracture of third metacarpal bone, left hand, sequela', 3);
insert into reviews (review_id, reviewer_name, review, book_id) values (14, 'Fionna', 'Anterior spinal artery comprsn syndromes, cervicothor region', 10);
insert into reviews (review_id, reviewer_name, review, book_id) values (15, 'Stefa', 'Abrasion of abdominal wall, initial encounter', 1);
insert into reviews (review_id, reviewer_name, review, book_id) values (16, 'Zeke', 'Fall same lev from slip/trip w strike against oth object', 3);
insert into reviews (review_id, reviewer_name, review, book_id) values (17, 'Ninette', 'Car driver injured in clsn w pick-up truck in traf, init', 10);
insert into reviews (review_id, reviewer_name, review, book_id) values (18, 'Elizabeth', 'Cysticercosis', 6);
insert into reviews (review_id, reviewer_name, review, book_id) values (19, 'Janessa', 'Displacement of int fix of right femur, init', 6);
insert into reviews (review_id, reviewer_name, review, book_id) values (20, 'Kathi', 'Obstructed labor due to incomplete rotation of fetal head', 2);